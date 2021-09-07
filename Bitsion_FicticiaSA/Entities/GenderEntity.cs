using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Entities
{
	public class GenderEntity
	{
		[Key]
		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		public int genderId { get; set; }
		[Required(ErrorMessage = "Debe ingresar el nombre del genero.")]
		[StringLength(15, ErrorMessage = "Maximo 15 caracteres.")]
		[MinLength(3, ErrorMessage = "Debe tener por lo menos 3 caracteres.")]
		public string genderName { get; set; }
		[Required]
		public bool genderState { get; set; }

		public string GenderStateToString()
		{
			if (genderState)
				return "Activo";
			else
				return "No Activo";
		}
	}
}
