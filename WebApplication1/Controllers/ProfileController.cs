using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using System;
using WebApplication1.Models;
public class ProfileController : Controller
{
    ApplicationContext _context;
    public List<User> Users;
    public User Person;
    public ProfileController(ApplicationContext context)
    {
        _context = context;
    }
    [HttpPost]
    public IActionResult Logout()
    {
        // Ваш код для выхода из системы
        // Например, удаление cookie и установка ViewData["islogged"] = false

        // Удаление cookie "UserId"
        Response.Cookies.Delete("UserId");

        // Установка значения ViewData["islogged"] = false
        ViewData["islogged"] = false;
        Response.Headers.ContentType = "text/html";
        // Перенаправление на страницу профиля
        return RedirectToPage("/Profile");
    }
    [HttpPost]
    public async Task<IActionResult> Login(string email, string password)
    {
        Person = await _context.Users.FirstOrDefaultAsync(u => u.email == email && u.password == password);
        if (Person == null)
        {
            ViewData["islogged"] = false;
            return Json(new { succes = false, message = "Некорректное имя пользователя/пароль" });
        }
        else
        {
            Response.Cookies.Append("UserId", Person.Id, new CookieOptions
            {
                Expires = DateTime.Now.AddYears(1), // Устанавливаем срок действия cookie на 1 год
                HttpOnly = true // Делаем cookie доступным только для HTTP запросов
            });
            ViewData["islogged"] = true;
            ViewData["Profile"] = Person;
			return Json(new { success = true, redirectTo = "/Profile" });
		}
	}
    [HttpPost]
    public async Task<IActionResult> Registration(User user)
    {
		Person = await _context.Users.FirstOrDefaultAsync(x => x.email == user.email);
		if (Person == null)
		{
			string userId = Guid.NewGuid().ToString();
			userId = Guid.NewGuid().ToString();
			// Сохраняем идентификатор в cookie
			Response.Cookies.Append("UserId", userId, new CookieOptions
			{
				Expires = DateTime.Now.AddYears(1), // Устанавливаем срок действия cookie на 1 год
				HttpOnly = true // Делаем cookie доступным только для HTTP запросов
			});
			user.Id = userId;
			_context.Users.Add(user);
			await _context.SaveChangesAsync();
			return Json(new { isExist = false, redirectTo = "/Profile" });
		}
		else
		{
			return Json(new { isExist = true, message = "Пользователь с таким e-mail уже зарегистрирован" });
		}


		/////////////////////////////
		/*if (Request.Cookies.ContainsKey("UserId"))
		{
			string? userId = Request.Cookies["UserId"];
			Person = await _context.Users.FirstOrDefaultAsync(x => x.Id == userId && x.email==user.email);
			if (Person != null)
			{
				return Json(new { isExist = true, message = "Пользователь с таким e-mail уже зарегистрирован"});
			}
			else
			{
				userId = Guid.NewGuid().ToString();
				// Сохраняем идентификатор в cookie
				Response.Cookies.Append("UserId", userId, new CookieOptions
				{
					Expires = DateTime.Now.AddYears(1), // Устанавливаем срок действия cookie на 1 год
					HttpOnly = true // Делаем cookie доступным только для HTTP запросов
				});
				user.Id = userId;
			}
			_context.Users.Add(user);
			await _context.SaveChangesAsync();
		}
		else
		{
			string userId = Guid.NewGuid().ToString();
			// Сохраняем идентификатор в cookie
			Response.Cookies.Append("UserId", userId, new CookieOptions
			{
				Expires = DateTime.Now.AddYears(1), // Устанавливаем срок действия cookie на 1 год
				HttpOnly = true // Делаем cookie доступным только для HTTP запросов
			});
			user.Id = userId;
			_context.Users.Add(user);
			await _context.SaveChangesAsync();
		}
		ViewData["islogged"] = true;
		return Json(new { isExist = false, redirectTo = "/Profile" });*/
		//////////////////////////////////////

	}//close funcction
}