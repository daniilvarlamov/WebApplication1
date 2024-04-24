using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using WebApplication1.Models;

namespace WebApplication1.Pages
{
    public class ApartmentModel : PageModel
    {
        ApplicationContext _context;
        public Apartment Apartment;
        public ApartmentModel(ApplicationContext context)
        {
            _context = context;
        }
        public async Task OnGet()
        {
            var filter = Request.Query["id"];
            Apartment = await _context.Apartments.Where(u => u.Id == int.Parse(filter)).FirstOrDefaultAsync();
            string? userId = Request.Cookies["UserId"];
            ViewData["islogged"] = false;
            if (userId != null && await _context.Users.Where(u=> u.Id == userId).FirstOrDefaultAsync() != null)
            {
                ViewData["islogged"] = true;
            }
        }
        public IActionResult bron()
        {
            return RedirectToPage("/Index");
        }
    }
}
