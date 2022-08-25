CREATE DATABASE "universe";

CREATE TABLE "galaxy" (
	"galaxy_id" SERIAL PRIMARY KEY,
	"name" VARCHAR(30) UNIQUE NOT NULL,
	"age_in_millions_of_years" INTEGER,
	"mass_in_solar_mass" BIGINT,
	"distance_from_earth_in_light_years" NUMERIC(38,10),
	"description" TEXT,
	"has_life" BOOLEAN,
	"is_spherical" BOOLEAN
);

CREATE TABLE "star" (
	"star_id" SERIAL PRIMARY KEY,
	"name" VARCHAR(30) UNIQUE NOT NULL,
	"age_in_millions_of_years" INTEGER,
	"mass_in_solar_mass" INTEGER,
	"distance_from_earth_in_light_years" NUMERIC(38,10),
	"description" TEXT,
	"has_life" BOOLEAN,
	"is_spherical" BOOLEAN,
	"galaxy_id" INTEGER CONSTRAINT "valid_galaxy" REFERENCES "galaxy"("galaxy_id")
);

CREATE TABLE "planet" (
	planet_id SERIAL PRIMARY KEY,
	"name" VARCHAR(30) UNIQUE NOT NULL,
	"age_in_millions_of_years" INTEGER,
	"mass_in_solar_mass" INTEGER,
	"distance_from_earth_in_light_years" NUMERIC(38,10),
	"description" TEXT,
	"has_life" BOOLEAN,
	"is_spherical" BOOLEAN,
	"star_id" INTEGER CONSTRAINT "valid_star" REFERENCES "star"("star_id")
);

CREATE TABLE "moon" (
	moon_id SERIAL PRIMARY KEY,
	"name" VARCHAR(30) UNIQUE NOT NULL,
	"age_in_millions_of_years" INTEGER,
	"mass_in_solar_mass" INTEGER,
	"distance_from_earth_in_light_years" NUMERIC(38,10),
	"description" TEXT,
	"has_life" BOOLEAN,
	"is_spherical" BOOLEAN,
	"planet_id" INTEGER CONSTRAINT "valid_planet" REFERENCES "planet"("planet_id")
);

CREATE TABLE "comet" (
	"comet_id" SERIAL PRIMARY KEY,
	"name" VARCHAR(30) UNIQUE NOT NULL,
	"description" TEXT
);

-- Insert galaxies

INSERT INTO galaxy(name) VALUES('Andromeda Galaxy');

INSERT INTO galaxy(name) VALUES('Canis Major Dwarf Galaxy');

INSERT INTO galaxy(name) VALUES('Cygnus A');

INSERT INTO galaxy(name) VALUES('Maffei I');

INSERT INTO galaxy(name) VALUES('Large Magellanic Cloud');

	INSERT INTO galaxy(name, age_in_millions_of_years, mass_in_solar_mass, distance_from_earth_in_light_years, description, 
		has_life, is_spherical) VALUES('Milky Way Galaxy', 1361000, 1150000000000, 26670, 'The Milky Way is the galaxy that 
		includes our Solar System.', TRUE, FALSE);

-- Insert stars

INSERT INTO star(name, galaxy_id) VALUES('Kepler-34', 6);

INSERT INTO star(name, galaxy_id) VALUES('Sirius', 6);

INSERT INTO star(name, galaxy_id) VALUES('Alpha Centauri', 6);

INSERT INTO star(name, galaxy_id) VALUES('Kepler-16A', 6);

INSERT INTO star(name, galaxy_id) VALUES('Kepler-16B', 6);

INSERT INTO star(name, age_in_millions_of_years, mass_in_solar_mass, distance_from_earth_in_light_years, description, 
	has_life, is_spherical, galaxy_id) VALUES('Sun', 4603, 1, 0.000015781, 'The Sun is the star at the center of the 
	Solar System.', FALSE, TRUE, 6);

-- Insert planets

INSERT INTO planet(name, star_id) VALUES('Mercury', 6);

INSERT INTO planet(name, star_id) VALUES('Venus', 6);

INSERT INTO planet(name, age_in_millions_of_years, mass_in_solar_mass, distance_from_earth_in_light_years, description, 
	has_life, is_spherical, star_id) VALUES('Planet Earth', 4543, 0, 0, 'Earth is the third planet from the Sun and the only 
	astronomical object known to harbor life.', TRUE, TRUE, 6);

INSERT INTO planet(name, star_id) VALUES('Mars', 6);

INSERT INTO planet(name, star_id) VALUES('Jupiter', 6);

INSERT INTO planet(name, star_id) VALUES('Saturn', 6);

INSERT INTO planet(name, star_id) VALUES('Uranus', 6);

INSERT INTO planet(name, star_id) VALUES('Neptune', 6);

INSERT INTO planet(name, star_id) VALUES('Proxima Centauri', 3);

INSERT INTO planet(name, star_id) VALUES('Kepler-16b', 4);

INSERT INTO planet(name, star_id) VALUES('Kepler-16B', 4);

INSERT INTO planet(name, star_id) VALUES('Kepler-34b', 1);

-- Insert moons

INSERT INTO moon(name, planet_id) VALUES('Ganymede', 5);

INSERT INTO moon(name, planet_id) VALUES('Callisto', 5);

INSERT INTO moon(name, planet_id) VALUES('Io', 5);

INSERT INTO moon(name, planet_id) VALUES('Europa', 5);

INSERT INTO moon(name, planet_id) VALUES('Metis', 5);

INSERT INTO moon(name, planet_id) VALUES('Phobos', 4);

INSERT INTO moon(name, planet_id) VALUES('Deimos', 4);

INSERT INTO moon(name, age_in_millions_of_years, mass_in_solar_mass, distance_from_earth_in_light_years, description,
	has_life, is_spherical, planet_id) VALUES('Moon', 4510, 0, 0.00000004063, 'The Moon is Earth''s only natural satellite.', 
	FALSE, TRUE, 3);

INSERT INTO moon(name, planet_id) VALUES('Mimas', 6);

INSERT INTO moon(name, planet_id) VALUES('Enceladus', 6);

INSERT INTO moon(name, planet_id) VALUES('Tethys', 6);

INSERT INTO moon(name, planet_id) VALUES('Dione', 6);

INSERT INTO moon(name, planet_id) VALUES('Rhea', 6);

INSERT INTO moon(name, planet_id) VALUES('Titan', 6);

INSERT INTO moon(name, planet_id) VALUES('Iapetus', 6);

INSERT INTO moon(name, planet_id) VALUES('Titania', 7);

INSERT INTO moon(name, planet_id) VALUES('Oberon', 7);

INSERT INTO moon(name, planet_id) VALUES('Ariel', 7);

INSERT INTO moon(name, planet_id) VALUES('Umbriel', 7);

INSERT INTO moon(name, planet_id) VALUES('Triton', 8);

-- Insert comets

INSERT INTO comet(name, description) VALUES('Halley''s Comet', 'It is a short-period comet visible from Earth every 75–79 
	years.');

INSERT INTO comet(name, description) VALUES('Comet Shoemaker–Levy 9','Comet Shoemaker–Levy 9 broke apart in July 1992 and 
	collided with Jupiter in July 1994, providing the first direct observation of an extraterrestrial collision of Solar 
	System objects.');

INSERT INTO comet(name, description) VALUES('Comet Hyakutake', 'Comet Hyakutake is a comet, discovered on 31 January 1996,
	that passed very close to Earth in March of that year.');