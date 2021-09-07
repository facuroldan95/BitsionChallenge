using DataAccess;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business
{
	public class B_Gender
	{
        public static List<GenderEntity> GendersList()
        {
            using (var db = new FicticiaDBContext())
            {
                return db.Genders.ToList();
            }
        }

        public static void CreateGender(GenderEntity g)
        {
            using (var db = new FicticiaDBContext())
            {
                db.Genders.Add(g);
                db.SaveChanges();
            }
        }

        public static void UpdatePerson(GenderEntity g)
        {
            using (var db = new FicticiaDBContext())
            {
                db.Genders.Update(g);
                db.SaveChanges();
            }
        }

        public static GenderEntity GenderById(int id)
        {
            using (var db = new FicticiaDBContext())
            {
                return db.Genders.ToList().LastOrDefault(g => g.genderId == id);
            }
        }
    }
}
