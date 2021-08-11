CREATE SCHEMA IF NOT EXISTS UltimateSoccerSquadBuilder CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

USE UltimateSoccerSquadBuilder;


DROP TABLE IF EXISTS tbl_customized_teams;
DROP TABLE IF EXISTS tbl_users;
DROP TABLE IF EXISTS tbl_team_urls;
DROP TABLE IF EXISTS tbl_team_tactics;
DROP TABLE IF EXISTS tbl_player_urls;
DROP TABLE IF EXISTS tbl_player_traits;
DROP TABLE IF EXISTS tbl_player_specialities;
DROP TABLE IF EXISTS tbl_player_skill;
DROP TABLE IF EXISTS tbl_player_profile;
DROP TABLE IF EXISTS tbl_player_power;
DROP TABLE IF EXISTS tbl_player_movement;
DROP TABLE IF EXISTS tbl_player_mentality;
DROP TABLE IF EXISTS tbl_player_goalkeeping;
DROP TABLE IF EXISTS tbl_player_defending;
DROP TABLE IF EXISTS tbl_player_attacking;
DROP TABLE IF EXISTS tbl_player;
DROP TABLE IF EXISTS tbl_team;
DROP TABLE IF EXISTS tbl_world_cup_country;
DROP TABLE IF EXISTS tbl_world_cup_player;


CREATE TABLE tbl_world_cup_country(
	standings INT,
    country VARCHAR(255) character set utf8,
    CONSTRAINT pk_tbl_world_cup_country PRIMARY KEY (country)
    );
    
CREATE TABLE tbl_world_cup_player(
	country VARCHAR(255) character set utf8,
    player VARCHAR(255) character set utf8,
    position VARCHAR(255) character set utf8,
    CONSTRAINT pk_tbl_world_cup_player PRIMARY KEY (player)
    );

CREATE TABLE tbl_team(
    int_team_id INT,
    str_team_name VARCHAR(255) character set utf8,
    str_league VARCHAR(255) character set utf8,
    int_overall INT,
    int_attack INT,
    int_midfield INT,
    int_defence INT,
    int_international_prestige INT,
    int_domestic_prestige INT,
    int_transfer_budget INT,
    CONSTRAINT pk_tbl_team_int_team_id PRIMARY KEY (int_team_id)
);

CREATE TABLE tbl_player(
    int_player_id INT,
    str_player_name VARCHAR(255) character set utf8,
    str_positions VARCHAR(255) character set utf8,
    dt_date_of_birth DATE,
    int_height INT,
    int_weight INT,
    int_overall_rating INT,
    int_potential_rating INT,
    str_best_position VARCHAR(10) character set utf8,
    int_best_overall_rating INT,
    int_value INT,
    int_wage INT,
    str_player_image_url VARCHAR(255) character set utf8,
    int_team_id INT,
    str_nationality VARCHAR(255) character set utf8,
    CONSTRAINT pk_tbl_player_player_id PRIMARY KEY (int_player_id),
    CONSTRAINT fk_tbl_player_int_team_id FOREIGN KEY (int_team_id) REFERENCES tbl_team(int_team_id)
    ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE tbl_player_attacking(
    int_attacking_id INT,
    int_player_id INT,
    int_crossing INT,
    int_finishing INT,
    int_heading_accuracy INT,
    int_short_passing INT,
    int_volleys INT,
    CONSTRAINT pk_tbl_player_attacking_int_attacking_id PRIMARY KEY (int_attacking_id),
    CONSTRAINT fk_tbl_player_attacking_int_player_id FOREIGN KEY (int_player_id) REFERENCES tbl_player(int_player_id) 
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tbl_player_defending(
    int_defending_id INT,
    int_player_id INT,
    int_defensive_awareness INT,
    int_standing_tackle INT,
    int_sliding_tackle INT,
    CONSTRAINT pk_tbl_player_defending_int_defending_id PRIMARY KEY (int_defending_id),
    CONSTRAINT fk_tbl_player_defending_int_player_id FOREIGN KEY (int_player_id) REFERENCES tbl_player(int_player_id) 
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tbl_player_goalkeeping(
    int_goalkeeping_id INT,
    int_player_id INT,
    int_diving INT,
    int_handling INT,
    int_kicking INT,
    int_positioning INT,
    int_reflexes INT,
    CONSTRAINT pk_tbl_player_goalkeeping_int_goalkeeping_id PRIMARY KEY (int_goalkeeping_id),
    CONSTRAINT fk_tbl_player_goalkeeping_int_player_id FOREIGN KEY (int_player_id) REFERENCES tbl_player(int_player_id) 
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tbl_player_mentality(
    int_mentality_id INT,
    int_player_id INT,
    int_aggression INT,
    int_interceptions INT,
    int_positioning INT,
    int_vision INT,
    int_penalties INT,
    int_composure INT,
    CONSTRAINT pk_tbl_player_mentality_int_mentality_id PRIMARY KEY (int_mentality_id),
    CONSTRAINT fk_tbl_player_mentality_int_player_id FOREIGN KEY (int_player_id) REFERENCES tbl_player(int_player_id) 
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tbl_player_movement(
    int_movement_id INT,
    int_player_id INT,
    int_acceleration INT,
    int_sprint_speed INT,
    int_agility INT,
    int_reactions INT,
    int_balance INT,
    CONSTRAINT pk_tbl_player_movement_int_movement_id PRIMARY KEY (int_movement_id),
    CONSTRAINT fk_tbl_player_movement_int_player_id FOREIGN KEY (int_player_id) REFERENCES tbl_player(int_player_id) 
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tbl_player_power(
    int_power_id INT,
    int_player_id INT,
    int_shot_power INT,
    int_jumping INT,
    int_stamina INT,
    int_strength INT,
    int_long_shots INT,
    CONSTRAINT pk_tbl_player_power_int_power_id PRIMARY KEY (int_power_id),
    CONSTRAINT fk_tbl_player_power_int_player_id FOREIGN KEY (int_player_id) REFERENCES tbl_player(int_player_id) 
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tbl_player_profile(
    int_profile_id INT,
    int_player_id INT,
    str_preferred_foot VARCHAR(255) character set utf8,
    int_weak_foot INT,
    int_skill_moves INT,
    int_international_reputations INT,
    str_work_rate VARCHAR(255) character set utf8,
    str_body_type VARCHAR(255) character set utf8,
    CONSTRAINT pk_tbl_player_profile_int_profile_id PRIMARY KEY (int_profile_id),
    CONSTRAINT fk_tbl_player_profile_int_player_id FOREIGN KEY (int_player_id) REFERENCES tbl_player(int_player_id) 
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tbl_player_skill(
    int_skill_id INT,
    int_player_id INT,
    int_dribbling INT,
    int_curve INT,
    int_fk_accuracy INT,
    int_long_passing INT,
    int_ball_control INT,
    CONSTRAINT pk_tbl_player_skill_int_skill_id PRIMARY KEY (int_skill_id),
    CONSTRAINT fk_tbl_player_skill_int_player_id FOREIGN KEY (int_player_id) REFERENCES tbl_player(int_player_id) 
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tbl_player_specialities(
    int_speciality_id INT,
    int_player_id INT,
    str_player_speciality VARCHAR(255) character set utf8,
    CONSTRAINT pk_tbl_player_specialities_int_skill_id PRIMARY KEY (int_speciality_id),
    CONSTRAINT fk_tbl_player_specialities_int_player_id FOREIGN KEY (int_player_id) REFERENCES tbl_player(int_player_id) 
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tbl_player_traits(
	int_player_id INT,
    str_trait VARCHAR(255) character set utf8,
    int_trait_id INT,
    CONSTRAINT pk_tbl_player_traits_int_trait_id PRIMARY KEY (int_trait_id),
    CONSTRAINT fk_tbl_player_traits_int_player_id FOREIGN KEY (int_player_id) REFERENCES tbl_player(int_player_id) 
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tbl_player_urls(
    int_player_id INT,
    str_url VARCHAR(255) character set utf8,
    dt_crawled TIMESTAMP,
    CONSTRAINT pk_tbl_player_urls_int_player_id PRIMARY KEY (int_player_id),
    CONSTRAINT fk_tbl_player_urls_int_player_id FOREIGN KEY (int_player_id) REFERENCES tbl_player(int_player_id) 
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tbl_team_tactics(
    int_tactic_id INT,
    int_team_id INT,
    str_defensive_style VARCHAR(255) character set utf8,
    int_team_width INT,
    int_depth INT,
    str_offensive_style VARCHAR(255) character set utf8,
    int_width INT,
    int_players_in_box INT,
    int_corners INT,
    int_freekicks INT,
    CONSTRAINT pk_tbl_team_tactics_int_tactic_id PRIMARY KEY (int_tactic_id),
    CONSTRAINT fk_tbl_team_tactics_int_team_id FOREIGN KEY (int_team_id) REFERENCES tbl_team(int_team_id) 
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tbl_team_urls (
    int_team_id INT,
    str_url VARCHAR(255) character set utf8,
    dt_crawled TIMESTAMP,
    CONSTRAINT pk_tbl_team_urls_int_team_id PRIMARY KEY (int_team_id),
    CONSTRAINT fk_tbl_team_urls_int_team_id FOREIGN KEY (int_team_id)
	REFERENCES tbl_team (int_team_id)
	ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE tbl_users(
  str_username VARCHAR(255),
  str_password VARCHAR(255) NOT NULL,
  FirstName VARCHAR(255) NOT NULL,
  LastName VARCHAR(255) NOT NULL,
  Email VARCHAR(255) NOT NULL,
  Budget BIGINT,
  CONSTRAINT pk_users_username PRIMARY KEY (str_username)
);

CREATE TABLE tbl_customized_teams (
	int_team_id INT AUTO_INCREMENT,
	str_username VARCHAR(255),
    int_p1_id INT,
    int_p2_id INT,
    int_p3_id INT,
    int_p4_id INT,
    int_p5_id INT,
    int_p6_id INT,
    int_p7_id INT,
    int_p8_id INT,
    int_p9_id INT,
    int_p10_id INT,
    int_p11_id INT,
    CONSTRAINT pk_tbl_customized_teams_int_team_id
	PRIMARY KEY(int_team_id),
	CONSTRAINT fk_tbl_customized_teams_str_username
	FOREIGN KEY(str_username)
	REFERENCES tbl_users(str_username)
	ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_tbl_customized_teams_int_p1_id
	FOREIGN KEY(int_p1_id)
	REFERENCES tbl_player(int_player_id)
	ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_tbl_customized_teams_int_p2_id
	FOREIGN KEY(int_p2_id)
	REFERENCES tbl_player(int_player_id)
	ON UPDATE CASCADE ON DELETE SET NULL,
     CONSTRAINT fk_tbl_customized_teams_int_p3_id
	FOREIGN KEY(int_p3_id)
	REFERENCES tbl_player(int_player_id)
	ON UPDATE CASCADE ON DELETE SET NULL,
     CONSTRAINT fk_tbl_customized_teams_int_p4_id
	FOREIGN KEY(int_p4_id)
	REFERENCES tbl_player(int_player_id)
	ON UPDATE CASCADE ON DELETE SET NULL,
     CONSTRAINT fk_tbl_customized_teams_int_p5_id
	FOREIGN KEY(int_p5_id)
	REFERENCES tbl_player(int_player_id)
	ON UPDATE CASCADE ON DELETE SET NULL,
     CONSTRAINT fk_tbl_customized_teams_int_p6_id
	FOREIGN KEY(int_p6_id)
	REFERENCES tbl_player(int_player_id)
	ON UPDATE CASCADE ON DELETE SET NULL,
     CONSTRAINT fk_tbl_customized_teams_int_p7_id
	FOREIGN KEY(int_p7_id)
	REFERENCES tbl_player(int_player_id)
	ON UPDATE CASCADE ON DELETE SET NULL,
     CONSTRAINT fk_tbl_customized_teams_int_p8_id
	FOREIGN KEY(int_p8_id)
	REFERENCES tbl_player(int_player_id)
	ON UPDATE CASCADE ON DELETE SET NULL,
     CONSTRAINT fk_tbl_customized_teams_int_p9_id
	FOREIGN KEY(int_p9_id)
	REFERENCES tbl_player(int_player_id)
	ON UPDATE CASCADE ON DELETE SET NULL,
     CONSTRAINT fk_tbl_customized_teams_int_p10_id
	FOREIGN KEY(int_p10_id)
	REFERENCES tbl_player(int_player_id)
	ON UPDATE CASCADE ON DELETE SET NULL,
     CONSTRAINT fk_tbl_customized_teams_int_p11_id
	FOREIGN KEY(int_p11_id)
	REFERENCES tbl_player(int_player_id)
	ON UPDATE CASCADE ON DELETE SET NULL
);


