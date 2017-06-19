using System;
using LOL.Guess;

namespace LOL
{
    class Program
    {
        static void Main(string[] args)
        {
            var guess = new GuessGame();
            Console.WriteLine(guess.GuessMyNumber());
        }
    }
}
