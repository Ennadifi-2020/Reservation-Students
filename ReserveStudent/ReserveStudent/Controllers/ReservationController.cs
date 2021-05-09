using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using ReserveStudent.Models;
using ReserveStudent.Models.contract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ReserveStudent.Controllers
{
    public class ReservationController : Controller
    {
        private readonly IReservationRepository _reservatrepo;
        private readonly IReservationTypeRepository _reservatTypeRepo;
        private readonly UserManager<IdentityUser> _userManager;

        //constructeur initialisation
        public ReservationController(IReservationRepository reservationRepo, IReservationTypeRepository reservationTypeRepo, UserManager<IdentityUser> userManager)
        {
            _reservatrepo = reservationRepo;
            _reservatTypeRepo = reservationTypeRepo;
            _userManager = userManager;
        }
        [Authorize]
        // GET: ReservationController
        //afficher user
        public async Task<ActionResult> Index()
        {
            var userr = await _userManager.GetUserAsync(User);

            if (User.IsInRole("Admin"))
            {
                var reservation = _reservatrepo.GetAll().OrderBy(x => x.RequestingStudent.Count);
                return View(reservation);
            }
            else
            {
                var reservation = _reservatrepo.GetAll().Where(r => r.RequestingStudentId == userr.Id);
                return View(reservation);

            }

           
        }

        // GET: ReservationController/Details/5
        public ActionResult Review(int id)
        {
            var reservation = _reservatrepo.GetById(id);
            return View(reservation);
        }

        public ActionResult ApprouveRequest(int id)
        {
            try
            {
                var user = _userManager.GetUserAsync(User).Result;
                var reservation = _reservatrepo.GetById(id);
                reservation.Status = true;
                reservation.RequestingStudent.Count ++ ;
                _reservatrepo.Update(reservation);
                return RedirectToAction("Index");

            }
            catch (Exception)
            {

                return RedirectToAction("Index");
            }
        }

        public ActionResult RejectRequest(int id)
        {
            try
            {
                
                var reserv = _reservatrepo.GetById(id);
                reserv.Status = false;
                _reservatrepo.Update(reserv);
                return RedirectToAction("Index");

            }
            catch (Exception)
            {

                return RedirectToAction("Index");
            }
        }

        //create Reservation
            public ActionResult Create()
        {

            var reservationTypes = _reservatTypeRepo.GetAll(); 
            var absenceTypesItems = reservationTypes.Select(x => new SelectListItem
            {
                Text = x.Name,
                Value = x.Id.ToString()
            }).ToList();
            var model = new CreateReservation
            {
               ReservationTypes = absenceTypesItems
            };
            return View(model);
        }

        // POST: Creation du nouveau reservation
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(CreateReservation model)
        {
            try
            {
                var Date = Convert.ToDateTime(model.Date);
                
                var reservationTypes = _reservatTypeRepo.GetAll().ToList();
                var reservationTypesItems = reservationTypes.Select(x => new SelectListItem
                {
                    Text = x.Name,
                    Value = x.Id.ToString()
                }).ToList();
                model.ReservationTypes = reservationTypesItems;
                if (!ModelState.IsValid)
                {
                    return View(model);
                }
               
                var student = _userManager.GetUserAsync(User).Result;
               

                var reservation = new Reservation
                {
                    RequestingStudentId = student.Id,
                    Date = Date,
                    Status=null,
                    ReservationTypeId=model.ReservationTypeId

                };
                var isSuccuss = _reservatrepo.Create(reservation);
                if (!isSuccuss)
                {
                    ModelState.AddModelError("", "Something went wrong in the submit action");
                    return View(model);
                }
                return RedirectToAction(nameof(Index));
            }
            catch (Exception)
            {
                return View();
            }
        }

        // GET: ReservationController/Edit/
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: ReservationController/Edit/
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: ReservationController/Delete/
        public ActionResult Delete(int id)
        {

            return View();
        }

        // POST: ReservationController/Delete/
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
