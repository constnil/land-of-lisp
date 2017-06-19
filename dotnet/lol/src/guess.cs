using System;

namespace LOL.Guess {
    public class GuessGame
    {
        private int _small = 1;
        private int _big = 100;

        public int GuessMyNumber()
        {
            return (_small + _big) >> 1;
        }

        public int Smaller()
        {
            _big = GuessMyNumber();
            return GuessMyNumber();
        }

        public int Bigger()
        {
            _small = GuessMyNumber();
            return GuessMyNumber();
        }

        public int StartOver()
        {
            _small = 1;
            _big = 100;
            return GuessMyNumber();
        }
    }
}
