using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.ResponseCompression;
using Microsoft.EntityFrameworkCore;
using WebApplication1.Models;



var builder = WebApplication.CreateBuilder(args);


string connection = builder.Configuration.GetConnectionString("DefaultConnection");


builder.Services.AddDbContext<ApplicationContext>(options => options.UseNpgsql(connection));

builder.Services.AddControllers();
builder.Services.AddResponseCompression(options =>
{
    options.EnableForHttps = true;
    options.MimeTypes = ResponseCompressionDefaults.MimeTypes.Concat(
        new[] { "image/jpeg", "image/png", "image/gif" });
});

builder.Services.AddRazorPages(options =>
{

    options.Conventions.ConfigureFilter(new IgnoreAntiforgeryTokenAttribute());
});

var app = builder.Build();
app.MapControllerRoute(
    name: "/Profile/Logout",
    pattern: "{controller=Profile}/{action=Logout}/{id?}");

app.MapControllerRoute(
	name: "/Profile/Login",
	pattern: "{controller=Profile}/{action=Login}/{id?}");

app.MapControllerRoute(
    name: "/Apartment/Filtering",
    pattern: "{controller=Apartment}/{action=Filtering}/{id?}");

app.MapControllerRoute(
    name: "/Apartment/Reserve",
    pattern: "{controller=Apartment}/{action=Reserve}/{id?}");

app.MapControllerRoute(
	name: "/Profile/Registration",
	pattern: "{controller=Profile}/{action=Registration}/{id?}");


// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseResponseCompression();

app.UseHttpsRedirection();

app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapRazorPages();

app.Run();
