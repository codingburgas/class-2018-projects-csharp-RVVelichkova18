using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.ComponentModel.DataAnnotations;

namespace FinalProject
{
    class Program
    {
        const string _connectionString = @"Data Source=.\SQLExpress;" +
       @"Initial Catalog=final-projects-csharp-database;Integrated Security=True;";
        static bool DeleteCustomerById(int id)
        {
            string query = $"DELETE FROM sales.customers WHERE customer_id = @CustomerId ";
            using (SqlConnection connection = new SqlConnection(_connectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.Add("@CustomerId", System.Data.SqlDbType.Int).Value = id;
                connection.Open();
                Console.WriteLine("Connected!");
                return command.ExecuteNonQuery() == 1;
            } // Disconnects from the SQL server
        }

        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
        }
    }
}
 