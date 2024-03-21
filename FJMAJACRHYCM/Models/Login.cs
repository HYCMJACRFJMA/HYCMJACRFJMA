using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace FJMAJACRHYCM.Models
{
    public class Login
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public string Idlogin { get; set; }
        [Required]
        public string Correo { get; set; }

        [Required]
        public string Password { get; set; }
    }
}
