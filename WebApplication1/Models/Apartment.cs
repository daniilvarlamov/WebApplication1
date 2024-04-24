using System.ComponentModel.DataAnnotations;

namespace WebApplication1.Models
{
    public class Apartment
    {
        public int Id { get; set; }
        public int Number { get; set; }
        public int number_of_house { get; set; }
        public int number_of_floor { get; set; }
		public int number_of_rooms { get; set; }
        public float Square {  get; set; }
        public int price { get; set; }
        public string path_content { get; set; }
        public bool isbronned { get; set; }
        public string? who_bronned { get; set; }
        public string? description { get; set; }
    }
}
