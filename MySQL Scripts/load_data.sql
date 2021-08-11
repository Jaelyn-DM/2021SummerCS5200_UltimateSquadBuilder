USE UltimateSoccerSquadBuilder;

#1 tbl_team
LOAD DATA INFILE '/tmp/tbl_team.csv' INTO TABLE tbl_team
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_team;


#2 tbl_player
LOAD DATA INFILE '/tmp/tbl_player.csv' INTO TABLE tbl_player
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(int_player_id, str_player_name, str_positions, dt_date_of_birth, int_height,
 int_weight, int_overall_rating, int_potential_rating, str_best_position, 
 int_best_overall_rating, int_value, int_wage, str_player_image_url, 
 @vint_team_id, str_nationality)
SET int_team_id = NULLIF(@vint_team_id,'');

SELECT * FROM tbl_player;

#3 tbl_player_attacking
LOAD DATA INFILE '/tmp/tbl_player_attacking.csv' INTO TABLE tbl_player_attacking
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_player_attacking;

#4 tbl_player_defending
LOAD DATA INFILE '/tmp/tbl_player_defending.csv' INTO TABLE tbl_player_defending
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_player_defending;

#5 tbl_player_goalkeeping
LOAD DATA INFILE '/tmp/tbl_player_goalkeeping.csv' INTO TABLE tbl_player_goalkeeping
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_player_goalkeeping;

#6 tbl_player_mentality
LOAD DATA INFILE '/tmp/tbl_player_mentality.csv' INTO TABLE tbl_player_mentality
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_player_mentality;

#7 tbl_player_movement
LOAD DATA INFILE '/tmp/tbl_player_movement.csv' INTO TABLE tbl_player_movement
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_player_movement;

#8 tbl_player_power
LOAD DATA INFILE '/tmp/tbl_player_power.csv' INTO TABLE tbl_player_power
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_player_power;

#9 tbl_player_profile
LOAD DATA INFILE '/tmp/tbl_player_profile.csv' INTO TABLE tbl_player_profile
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_player_profile;

#10 tbl_player_skill
LOAD DATA INFILE '/tmp/tbl_player_skill.csv' INTO TABLE tbl_player_skill
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_player_skill;

#11 tbl_player_specialities
LOAD DATA INFILE '/tmp/tbl_player_specialities.csv' INTO TABLE tbl_player_specialities
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_player_specialities;


#12 tbl_player_traits
LOAD DATA INFILE '/tmp/tbl_player_traits.csv' INTO TABLE tbl_player_traits
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_player_traits;

#13 tbl_player_urls
LOAD DATA INFILE '/tmp/tbl_player_urls.csv' INTO TABLE tbl_player_urls
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_player_urls;


#14 tbl_team_tactics
LOAD DATA INFILE '/tmp/tbl_team_tactics.csv' INTO TABLE tbl_team_tactics
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_team_tactics;

#15 tbl_team_urls
LOAD DATA INFILE '/tmp/tbl_team_urls.csv' INTO TABLE tbl_team_urls
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM tbl_team_urls;

SELECT TABLE_NAME, TABLE_ROWS
FROM information_schema.tables
WHERE table_schema = 'UltimateSoccerSquadBuilder';

LOAD DATA INFILE '/tmp/tbl_world_cup_country.csv' INTO TABLE tbl_world_cup_country
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE '/tmp/tbl_world_cup_player.csv' INTO TABLE tbl_world_cup_player
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;






