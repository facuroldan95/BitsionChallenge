using DataAccess;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business
{
	public class B_Person
	{
        public static List<PersonEntity> PersonsList()
        {
            using (var db = new FicticiaDBContext())
            {
                return db.Persons.Where(p => p.isActive == true).ToList();
            }
        }
        public static List<PersonEntity> PersonsDeleteds()
        {
            using (var db = new FicticiaDBContext())
            {
                return db.Persons.Where(p => p.isActive == false).ToList();
            }
        }

        public static void CreatePerson(PersonEntity p)
		{
            using(var db = new FicticiaDBContext())
			{
                db.Persons.Add(p);
                db.SaveChanges();
			}
		}

        public static void UpdatePerson(PersonEntity p)
		{
            using (var db = new FicticiaDBContext())
			{
                db.Persons.Update(p);
                db.SaveChanges();
			}
		}

        public static PersonEntity PersonByIdentification(int ident)
		{
            using(var db = new FicticiaDBContext())
			{
                return db.Persons.ToList().LastOrDefault(c => c.identification == ident);
            }
		}
    }
}
