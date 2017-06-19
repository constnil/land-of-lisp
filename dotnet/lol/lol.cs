using System;

namespace lol
{
    class Program
    {
        static void Main(string[] args)
        {
            var guess = new Guess();
            Console.WriteLine(guess.GuessMyNumber());
        }
    }
}
