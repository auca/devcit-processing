final char WALL  = '#';
final char FLOOR = ' ';
final char DOOR  = 'D';
final char EXIT_DOOR = 'E';
final char COIN = '0';
// TODO

final char[][] LEVEL_01 = {
  { '#', '#', '#', '#', '#', '#', '#', '#', '#' },
  { '#', 'D', ' ', ' ', '0', ' ', ' ', 'E', '#' },
  { '#', '#', '#', '#', '#', '#', '#', '#', '#' }
};

final char[][] LEVEL_02 = {
  { '#', '#', '#' },
  { '#', 'D', '#' },
  { '#', ' ', '#' },
  { '#', ' ', '#' },
  { '#', '0', '#' },
  { '#', ' ', '#' },
  { '#', ' ', '#' },
  { '#', 'E', '#' },
  { '#', '#', '#' }
};

final char[][] LEVEL_03 = {
  { '#', '#', '#', '#', '#', '#', '#', '#', '#' },
  { '#', 'E', ' ', ' ', ' ', '#', ' ', '0', '#' },
  { '#', '#', '#', '#', ' ', '#', ' ', '#', '#' },
  { '#', ' ', ' ', ' ', ' ', '#', ' ', ' ', '#' },
  { '#', ' ', '#', '#', '#', '#', '#', ' ', '#' },
  { '#', ' ', '#', '0', '#', ' ', ' ', ' ', '#' },
  { '#', ' ', ' ', ' ', ' ', ' ', '#', ' ', '#' },
  { '#', '0', '#', '#', '#', '0', '#', 'D', '#' },
  { '#', '#', '#', '#', '#', '#', '#', '#', '#' }
};

// TODO: добавьте дополнительные уровни

final char[][][] LEVELS = {
  LEVEL_01,
  LEVEL_02,
  LEVEL_03
};