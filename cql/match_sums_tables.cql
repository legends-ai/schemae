CREATE TABLE IF NOT EXISTS match_sums (
  champion_id int,
  enemy_id int,
  patch text,
  tier int,

  -- These are all enums.
  region int,
  role int,
  queue int,

  -- MatchFilters message
  match_filters blob,

  -- MatchSum message
  match_sum blob,

  -- the whole enchilada
  PRIMARY KEY((champion_id, enemy_id, patch, tier, region, role, queue))
);

CREATE TABLE IF NOT EXISTS partial_sums (
  champion_id int,
  enemy_id int,
  patch text,
  tier int,

  -- These are all enums.
  region int,
  role int,
  queue int,

  -- MatchFilters message
  match_filters blob,

  -- MatchSum message
  match_sum blob,

  -- the whole enchilada
  PRIMARY KEY((champion_id, enemy_id, patch, tier, region, role, queue))
);
