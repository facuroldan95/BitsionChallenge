using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Entities
{
	public class PersonEntity
	{
		//[MinLength(7, ErrorMessage = "Debe ingresar ua indentificación válida.")]
		[Range(1000000, 99999999, ErrorMessage = "Ingrese una indentificación valida.")]
		[Required(ErrorMessage = "Debe ingresar una identificación.")]
		[Key]
		public int identification { get; set; }
		[Required(ErrorMessage = "Debe ingresar un nombre válido.")]
		[StringLength(30, ErrorMessage = "Maximo 30 caracteres.")]
		[MinLength(2, ErrorMessage = "Debe ingresar un nombre válido.")]
		public string name { get; set; }
		[Required(ErrorMessage = "Debe ingresar un apellido válido.")]
		[StringLength(30, ErrorMessage = "Maximo 30 caracteres.")]
		[MinLength(2, ErrorMessage = "Debe ingresar un apellido válido.")]
		public string surname { get; set; }
		[Required(ErrorMessage = "Debe ingresar una fecha")]
		public DateTime birthdayDate { get; set; }
		[Required(ErrorMessage = "Debe seleccionar un genero.")]
		[Range(0,99, ErrorMessage ="Seleccione un genero valido.")]
		public int gender { get; set; }
		public bool isActive { get; set; }
		public bool isDriver { get; set; }
		public bool isDiabetic { get; set; }
		public bool  otherDisease { get; set; }
		[MinLength(3, ErrorMessage = "Debe ingresar un texto valido.")]
		public string disease { get; set; } 

		public string ToBooleanString(bool flag)
		{
			if (flag)
				return "SI";
			else
				return "NO";
		}

		public int ObtainAge()
		{
			int age = Convert.ToInt32(DateTime.Today.AddTicks(-birthdayDate.Ticks).Year - 1);

			return age;
		}


	}
}
