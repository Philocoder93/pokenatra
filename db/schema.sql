DROP TABLE IF EXISTS pokemons            CASCADE;

create table pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  poke_type VARCHAR NOT NULL,
  cp VARCHAR NOT NULL,
  img_url VARCHAR NOT NULL
);
