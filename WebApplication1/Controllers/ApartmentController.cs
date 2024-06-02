using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class ApartmentController : Controller
    {
        ApplicationContext _context;
        public List<Apartment> apartments;
        public ApartmentController(ApplicationContext context)
        {
            _context = context;
        }
        [HttpPost]
        public async Task<IActionResult> Filtering(string? min_price, string? max_price, string? rooms, string? floor, string? house_number, string? min_square, string? max_square)
        {
            var query = _context.Apartments.AsQueryable();

            if (!string.IsNullOrEmpty(min_price))
            {
                int minPrice = int.Parse(min_price);
                query = query.Where(u => u.price >= minPrice);
            }

            if (!string.IsNullOrEmpty(max_price))
            {
                int maxPrice = int.Parse(max_price);
                query = query.Where(u => u.price <= maxPrice);
            }

            if (!string.IsNullOrEmpty(rooms))
            {
                int roomCount = int.Parse(rooms);
                query = query.Where(u => u.number_of_rooms == roomCount);
            }

            if (!string.IsNullOrEmpty(floor))
            {
                int floorNumber = int.Parse(floor);
                query = query.Where(u => u.number_of_floor == floorNumber);
            }

            if (!string.IsNullOrEmpty(house_number))
            {
                int houseNumber = int.Parse(house_number);
                query = query.Where(u => u.number_of_house == houseNumber);
            }

            if (!string.IsNullOrEmpty(min_square))
            {
                int minSquare = int.Parse(min_square);
                query = query.Where(u => u.Square >= minSquare);
            }

            if (!string.IsNullOrEmpty(max_square))
            {
                int maxSquare = int.Parse(max_square);
                query = query.Where(u => u.Square <= maxSquare);
            }

            query = query.Where(u => u.isbronned == false);

            apartments = await query.ToListAsync();
            return Json(apartments);
        }
        [HttpPost]
        public async Task Reserve(string? id)
        {
            string? userId = Request.Cookies["UserId"];
            var apartment = await _context.Apartments.FirstOrDefaultAsync(u => u.Id == int.Parse(id));
            if (apartment != null)
            {
                apartment.who_bronned = userId;
                apartment.isbronned = true;
            }
            await _context.SaveChangesAsync();
            Response.StatusCode = 200;
        }
    }
}
