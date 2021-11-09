DROP TABLE IF EXISTS user;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT NOT NULL,
  phone TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  grade TEXT NOT NULL,
  created TEXT NOT NULL,
  updated TEXT NOT NULL
);

DROP TABLE IF EXISTS board;

CREATE TABLE board (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  title TEXT NOT NULL,
  content TEXT NOT NULL,
  created TEXT NOT NULL,
  updated TEXT NOT NULL
);

DROP TABLE IF EXISTS device;

CREATE TABLE device (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  name TEXT NOT NULL,
  api_key TEXT NOT NULL,
  created TEXT NOT NULL,
  updated TEXT NOT NULL
);

DROP TABLE IF EXISTS monitoring;

CREATE TABLE monitoring (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  device_id INTEGER NOT NULL,
  dust_ratio TEXT NOT NULL,
  h_ratio TEXT NOT NULL,
  t_ratio TEXT NOT NULL,
  lux TEXT NOT NULL,
  weather TEXT NOT NULL,
  created TEXT NOT NULL,
  updated TEXT NOT NULL
);