using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Task
{
    class Program
    {
        static void Main(string[] args)
        {
            String s="";
            Boolean value;
            Console.WriteLine("Enter input");
            s = Console.ReadLine();        
            value = IsNullOrEmpty(s);
            Console.WriteLine(value);
            Console.ReadKey();
        }
        static Boolean IsNullOrEmpty(String s)
        {
            Boolean result;
            if (s==null || s=="")
            {
                result = true;
            }
            else
            {
                result = false;
            }
            return result;
        }
    }
}