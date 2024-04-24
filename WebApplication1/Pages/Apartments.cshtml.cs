using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using WebApplication1.Models;

namespace WebApplication1.Pages
{
    public class ApartmentsModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        ApplicationContext _context;
        public List<Apartment> ApartmentList;
        public ApartmentsModel(ApplicationContext context, ILogger<IndexModel> logger)
        {
            _context = context;
            _logger = logger;
        }
        public async Task OnGetAsync()
        {
            if (ViewData["filtered_list"] != null)
            {
                
            }
            else
            {
                ApartmentList = await _context.Apartments.ToListAsync();
                ViewData["apps_full"] = ApartmentList;
            }
            
        }
    }
}
