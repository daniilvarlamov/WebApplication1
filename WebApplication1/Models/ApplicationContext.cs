using Microsoft.EntityFrameworkCore;

namespace WebApplication1.Models
{
	public class ApplicationContext : DbContext
	{
		public DbSet<User> Users { get; set; } = null!;
		public DbSet<House> Houses { get; set; } = null!;
		public DbSet<Apartment> Apartments { get; set; } = null!;
		public DbSet<News> News { get; set; } = null!;
		public ApplicationContext(DbContextOptions<ApplicationContext> options) : base(options) { 
			//Database.EnsureDeleted();
			Database.EnsureCreated();
		}
	}
}
