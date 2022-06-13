using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.ComponentModel.DataAnnotations;

namespace FinalProject
{
    class User
    {

        [Key]
        public int Id { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public enum Role
        {
            Administrator,
            Expert,
            RegularUser
        }

        interface IUserService
        {

            int AddUser(User user);
            bool UpdateUser(User user);
            bool RemoveUserById(int id);
            User GetUserById(int id);
            List<User> GetUser();
        }
    }
    class Program
    {
        const string _connectionString = @"Data Source=.\SQLExpress;" +
       @"Initial Catalog=final-projects-csharp-database;Integrated Security=True;";
        static bool DeleteUserById(int id)
        {
            string query = $"DELETE FROM users WHERE Id = @Id ";
            using (SqlConnection connection = new SqlConnection(_connectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.Add("@Id", System.Data.SqlDbType.Int).Value = id;
                connection.Open();
                Console.WriteLine("Connected!");
                return command.ExecuteNonQuery() == 1;
            } // Disconnects from the SQL server
        }


        static void Main(string[] args)
        {
            bool wasDeleted = DeleteUserById(1);
            Console.WriteLine($"Was deleted: {wasDeleted}");
        }
    }
}
