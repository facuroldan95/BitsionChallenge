using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace DataAccess.Migrations
{
    public partial class CreatingBd : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Genders",
                columns: table => new
                {
                    genderId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    genderName = table.Column<string>(type: "nvarchar(15)", maxLength: 15, nullable: false),
                    genderState = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Genders", x => x.genderId);
                });

            migrationBuilder.CreateTable(
                name: "Persons",
                columns: table => new
                {
                    identification = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    name = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: false),
                    surname = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: false),
                    birthdayDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    gender = table.Column<int>(type: "int", nullable: false),
                    isActive = table.Column<bool>(type: "bit", nullable: false),
                    isDriver = table.Column<bool>(type: "bit", nullable: false),
                    isDiabetic = table.Column<bool>(type: "bit", nullable: false),
                    otherDisease = table.Column<bool>(type: "bit", nullable: false),
                    disease = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Persons", x => x.identification);
                });

            migrationBuilder.InsertData(
                table: "Genders",
                columns: new[] { "genderId", "genderName", "genderState" },
                values: new object[,]
                {
                    { 1, "Masculino", true },
                    { 2, "Femenino", true },
                    { 3, "Otro", true }
                });

            migrationBuilder.InsertData(
                table: "Persons",
                columns: new[] { "identification", "birthdayDate", "disease", "gender", "isActive", "isDiabetic", "isDriver", "name", "otherDisease", "surname" },
                values: new object[,]
                {
                    { 22452664, new DateTime(1995, 12, 27, 0, 0, 0, 0, DateTimeKind.Unspecified), "N/A", 1, true, false, true, "Facundo", false, "Roldán" },
                    { 15447334, new DateTime(1961, 8, 11, 0, 0, 0, 0, DateTimeKind.Unspecified), "Hipertensión, Asma", 1, true, true, false, "Juan", true, "Perez" }
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Genders");

            migrationBuilder.DropTable(
                name: "Persons");
        }
    }
}
