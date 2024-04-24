using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using System.Globalization;
using WebApplication1.Models;

namespace WebApplication1.Pages
{
	

	public class IndexModel : PageModel
    {
		ApplicationContext _context;
        public List<House> HouseList;
        public List<Apartment> ApartmentList;
        public Apartment Apartment;
        public House House;
		private readonly ILogger<IndexModel> _logger;

        public IndexModel(ILogger<IndexModel> logger, ApplicationContext db)
        {
			_context = db;
            _logger = logger;
        }
		public async Task OnGetAsync()
		{
            /*string[] paths = Directory.GetFiles("wwwroot/src/house");
            foreach (string path in paths)
            {
                var src = _context.Houses.FirstOrDefaultAsync(u => u.path_content == path);
                if (src == null)
                {
					House = new House();
					var relativepath = path.Replace("\\", "/").Replace("wwwroot", "");
					House.path_content = relativepath;
					House.number_of_floors = 16;
					House.apps_per_floor = 10;
					await _context.AddAsync(House);
				}
            }
            await _context.SaveChangesAsync();*/
            HouseList = await _context.Houses.ToListAsync();
            List<string> houses = new List<string>();
            foreach (var house in HouseList)
            {
				houses.Add(house.path_content);
            }
            ViewData["houses"] = houses;

			ApartmentList = await _context.Apartments.ToListAsync();
			List<string> apps = new List<string>();
			foreach(var apartment in ApartmentList)
			{
				apps.Add(apartment.path_content);
			}
			ViewData["apps"] = apps;

			//Заполнение БД планами квартир
			/*var plans = Directory.GetFiles("wwwroot/src/plan/3_rooms", "*.*")
	        .Where(file => !file.EndsWith(".conf"))
	        .ToArray();
			var properties = System.IO.File.ReadAllLines("wwwroot/src/plan/3_rooms/properties.conf");
			int count = 0;
			foreach (var plan in plans)
            {
				string relativePath = plan.Replace("\\", "/").Replace("wwwroot", "");
				var Exist = await _context.Apartments.FirstOrDefaultAsync(u => u.path_content == relativePath);
                if (Exist != null)
                {
					continue;
                }
                Apartment = new Apartment();
                string[] line = properties[count].Split(";");
                foreach (var item in line)
                {
                    string[] KeyValue = item.Split("=");
                    if (KeyValue.Length == 2)
                    { 
                        string key = KeyValue[0].Trim();
                        string value = KeyValue[1].Trim();
                        switch (key)
                        {
							case "price":
								int price = int.Parse(value);
                                Apartment.price = price;
								break;
							case "number":
								int number = int.Parse(value);
								Apartment.Number = number;
								break;
							case "square":
								float square = float.Parse(value, CultureInfo.InvariantCulture);
								Apartment.Square = square;
								break;
							case "floor":
								int floor = int.Parse(value);
								Apartment.number_of_floor = floor;
								break;
							default:
								break;
						}
                    }
					Apartment.path_content = relativePath;
					Apartment.number_of_rooms = 3;
                    Apartment.number_of_house = 1;
					Apartment.isbronned = false;
					await _context.Apartments.AddAsync(Apartment);
				}
				count++;
			}
            await _context.SaveChangesAsync();*/
        }
    }
}
