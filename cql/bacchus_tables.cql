CREATE TABLE IF NOT EXISTS bacchus.match_set (
  id text,
  PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS bacchus.rankings (
  id text,
  rank bigint,
  ranking blob,
  PRIMARY KEY(id, rank)
);
