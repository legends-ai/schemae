CREATE TABLE IF NOT EXISTS match_set (
  id text,
  PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS rankings (
  id text,
  rank bigint,
  ranking blob,
  PRIMARY KEY(id, rank)
);
