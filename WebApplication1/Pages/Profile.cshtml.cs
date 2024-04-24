using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.ViewFeatures.Buffers;
using Microsoft.EntityFrameworkCore;
using NuGet.Protocol.Plugins;
using System.Collections.Immutable;
using WebApplication1.Models;

namespace WebApplication1.Pages
{
    public class ProfileModel : PageModel
    {
        ApplicationContext _context;
        public List<User> Users;
        private readonly ILogger<ProfileModel> _logger;
        public User? Person;
        public List<Apartment> Apartments;
		public User user;
        public ProfileModel(ILogger<ProfileModel> logger, ApplicationContext db)
        {
            _context = db;
            _logger = logger;
        }
        public async Task GetApartments(string? login)
        {
            
        }
        public async Task OnGetAsync()
        {
            if (Request.Cookies.ContainsKey("UserId"))
            {
                string? userId = Request.Cookies["UserId"];
                Person = await _context.Users.FirstOrDefaultAsync(u => u.Id == userId);
                if (Person != null)
                {
                    ViewData["islogged"] = true;
                    ViewData["Profile"] = Person;
                    /*ViewData["username"] = Person.name;
                    ViewData["surname"] = Person.surname;
                    ViewData["email"] = Person.email;*/
                }
                else { ViewData["islogged"] = false; }
            }
            else { ViewData["islogged"] = false; }

            if ((bool)ViewData["islogged"] == true)
            {
				Apartments = await _context.Apartments.Where(u => u.isbronned == true && u.who_bronned == Request.Cookies["UserId"]).ToListAsync();
			}
        }

    }

}
