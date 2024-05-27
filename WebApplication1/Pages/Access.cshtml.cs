using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using WebApplication1.Models;

namespace WebApplication1.Pages
{
    public class AccessModel : PageModel
    {
        public void OnGet()
        {
            ViewData["houses"] = new List<string> { "/src/house/1e835d592ab3fd18268d15b9292d2e11.jpg", "/src/house/5b615fd957c2d.jpg" };
            ViewData["apps"] = new List<string> { "/src/plan/690a7a74899b9dc276794aa5bf1522df.jpeg", "/src/plan/9ed06a838c53641c70c780a641bc57bc.jpeg" };
            ViewData["news"] = new List<string> { "Новость 1", "Новость 2", "Новость 3" };
        }
    }
}
