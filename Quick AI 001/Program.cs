using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;




namespace Quick_AI_001
{   
    class Program
    {
        static void Main(string[] args)
        {
            string ConnectionString = @"server=(D006\SQLEXPRESS);Database=Quick_Ai;Trusted_Connection=ture";
            var conn = new SqlConnection(ConnectionString);
            conn.open();
            Console.WriteLine("Resigter");
            {
                Console.WriteLine("FullName");
                string FullName = Console.ReadLine();
                Console.WriteLine ("UserName");
                string UserName = Console.ReadLine();
                Console.WriteLine ("Email_Address");
                string Email_Address = Console.ReadLine();
                Console.WriteLine  ("Passward");
                string Passward = Console.ReadLine();
                string insertquery = " insert into Quick_AI(FullName,UserName,Email_Address,insertquery) Values('"+FullName+"', '"+UserName+"', '"+Email_Address+"', '"+Passward+"')";
                SqlCommand insertcommand = new SqlCommand(insertquery, conn);
                insertcommand.ExecuteNonQuery();
                Console.WriteLine("Your Resigtion is completed");
                conn.close();
            }

        }
    }
}
