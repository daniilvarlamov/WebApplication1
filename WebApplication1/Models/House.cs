using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebApplication1.Models
{
    public class House
    {
        [Key]
        public int Number { get; set; }
        public int number_of_floors { get; set; }

        public int apps_per_floor { get; set; }
        public string path_content { get; set; }
    }
}
