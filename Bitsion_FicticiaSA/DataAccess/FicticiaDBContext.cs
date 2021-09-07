using Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess
{
	public class FicticiaDBContext : DbContext
	{
		public DbSet<GenderEntity> Genders { get; set; }
		public DbSet<PersonEntity> Persons { get; set; }

		protected override void OnConfiguring(DbContextOptionsBuilder options)
		{
			if (!options.IsConfigured)
			{
				options.UseSqlServer(@"Data Source=DESKTOP-PVKUNLM\SQLEXPRESS;Initial Catalog=FicticiaDB;Persist Security Info=True;User ID=sa;Password=Facu123456");
			}
		}

		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			base.OnModelCreating(modelBuilder);
			
			modelBuilder.Entity<GenderEntity>().HasData(
				new GenderEntity { genderId = 1, genderName = "Masculino", genderState = true},
				new GenderEntity { genderId = 2, genderName = "Femenino", genderState = true},
				new GenderEntity { genderId = 3, genderName = "Otro", genderState = true}
				);

			modelBuilder.Entity<PersonEntity>().HasData(
				new PersonEntity { identification = 22452664, birthdayDate = Convert.ToDateTime("12/27/1995"), gender = 1, isActive = true, isDiabetic = false, isDriver = true, name = "Facundo", surname = "Roldán", otherDisease = false, disease = "N/A" },
				new PersonEntity { identification = 15447334, birthdayDate = Convert.ToDateTime("08/11/1961"), gender = 1, isActive = true, isDiabetic = true, isDriver = false, name = "Juan", surname = "Perez", otherDisease = true, disease = "Hipertensión, Asma" }
				);

			modelBuilder.Entity<GenderEntity>().Property(g => g.genderId).ValueGeneratedOnAdd();

		}
	}
}
