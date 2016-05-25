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
            String s;
            int value;
            Console.WriteLine("Enter input");
            s = Console.ReadLine();
            value = int.Parse(s);
            positiveDivisors(value);
            
        }
        static void positiveDivisors(int number)
        {
            List<int> factors = new List<int>();
            int max = (int)Math.Sqrt(number); 
            for (int factor = 1; factor <= max; ++factor)
            { 
                if (number % factor == 0)
                {
                    factors.Add(factor);
                    if (factor != number / factor)
                    { 
                        factors.Add(number / factor);
                    }
                }
            }
            factors.Sort();
            Console.WriteLine("{"+ string.Join(",", factors) + "}");
            Console.ReadKey();
        }
    }
}