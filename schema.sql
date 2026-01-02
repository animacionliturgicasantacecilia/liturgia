CREATE TABLE cantos (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  titulo TEXT NOT NULL,
  tipo TEXT,
  archivo TEXT,
  notas TEXT
);

CREATE TABLE misas (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  fecha TEXT NOT NULL,
  tiempo TEXT,
  titulo TEXT,
  notas TEXT
);

CREATE TABLE selecciones (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  misa_id INTEGER NOT NULL,
  canto_id INTEGER NOT NULL,
  orden INTEGER,
  FOREIGN KEY (misa_id) REFERENCES misas(id),
  FOREIGN KEY (canto_id) REFERENCES cantos(id)
);
