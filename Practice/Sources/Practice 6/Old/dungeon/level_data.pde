final char WALL  = '#';
final char FLOOR = ' ';
final char DOOR  = 'D';
final char HERO  = 'H';
final char COIN  = '+';

char[][] LEVEL_1 = {
  { '#', '#', '#', '#', '#', '#', '#' },
  { '#', 'H', ' ', ' ', ' ', 'D', '#' },
  { '#', '#', '#', '#', '#', '#', '#' }
};

char[][] LEVEL_2 = {
  { '#', '#', '#' },
  { '#', 'H', '#' },
  { '#', ' ', '#' },
  { '#', ' ', '#' },
  { '#', '+', '#' },
  { '#', ' ', '#' },
  { '#', ' ', '#' },
  { '#', ' ', '#' },
  { '#', 'D', '#' },
  { '#', '#', '#' }
};

char[][] LEVEL_3 = {
  { '#', '#', '#', '#', '#', '#' },
  { '#', 'H', '#', '#', '#', '#' },
  { '#', ' ', '#', '#', '#', '#' },
  { '#', ' ', '#', '#', '#', '#' },
  { '#', ' ', '#', '#', '#', '#' },
  { '#', '+', '#', '#', '#', '#' },
  { '#', ' ', '#', '#', '#', '#' },
  { '#', ' ', '#', '#', '#', '#' },
  { '#', ' ', '+', ' ', 'D', '#' },
  { '#', '#', '#', '#', '#', '#' }
};

char[][] LEVEL_4 = {
  { '#', '#', '#', '#', '#', '#', '#' },
  { '#', 'H', ' ', '+', '#', '+', '#' },
  { '#', '#', '#', ' ', '#', ' ', '#' },
  { '#', ' ', ' ', ' ', ' ', ' ', '#' },
  { '#', '+', '#', '#', '#', '#', '#' },
  { '#', ' ', '#', 'D', '#', ' ', '#' },
  { '#', ' ', '#', ' ', '+', ' ', '#' },
  { '#', ' ', '#', '#', '#', ' ', '#' },
  { '#', ' ', ' ', ' ', ' ', ' ', '#' },
  { '#', '#', '#', '#', '#', '#', '#' }
};

char[][][] LEVELS = {
  LEVEL_1,
  LEVEL_2,
  LEVEL_3,
  LEVEL_4
};