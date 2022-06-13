using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;

namespace UsersInfo
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

        public static void Update<T>(T user) where T : User
        {
            var query = $@"
              UPDATE[users]
               SET[FirstName] = @FirstName
                  ,[LastName] = @LastName
                  ,[Phone] = @Phone
                  ,[Email] = @Email
                  ,[Role] = @Role
                 WHERE Id= @Id
            ";
        }

        static bool UpdateCustomer(int id, string firstName)
        {

            string query = $"UPDATE users SET FirstName = @FirstName " +
            $"WHERE Id = @Id ";
            using (SqlConnection connection = new SqlConnection(_connectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            {

                command.Parameters.Add("@FirstName", System.Data.SqlDbType.NChar).Value = firstName;
                command.Parameters.Add("@Id", System.Data.SqlDbType.Int).Value = id;
                connection.Open();
                Console.WriteLine("Connected!");

                return command.ExecuteNonQuery() == 1;
            } // Disconnects from the SQL server
        }
        static void Main(string[] args)
        {
            // bool wasDeleted = DeleteUserById(1);
            //Console.WriteLine($"Was deleted: {wasDeleted}");
            bool wasUpdated = UpdateCustomer(2, "User1");
            Console.WriteLine($"Was updated: {wasUpdated}");
        }
    }
}
