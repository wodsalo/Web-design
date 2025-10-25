/* Простые запросы с использованием select */
SELECT 
    *
FROM
    games;
    
SELECT 
    `gamers`.`idgamers`,
    gamers.`name`,
    `gamers`.`country`,
    `gamers`.`favourite_game`,
    `gamers`.`dob`
FROM
    `bd1`.`gamers`;
SELECT 
    gamers.`name`,
    `gamers`.`country`
FROM
    `bd1`.`gamers`;    
    
/* Выборка из нескольких таблиц с соединением */
SELECT 
    `gamers`.`idgamers`,
    gamers.`name`,
    `gamers`.`country`,
    `gamers`.`favourite_game`,
    `gamers`.`dob`
FROM
    `bd1`.`gamers`;
SELECT ALL
    gamers.`name`, games.`game_name`, games.`country` as 'Страна разработчика'
FROM
    `bd1`.`gamers`,
    games
WHERE
    favourite_game = `games`.`idgame`;  

/*Исключение дублирующихся значений из результатов запроса*/
SELECT DISTINCT
    `country`
FROM
    games;
    
/*Исключаются только полностью совпадаюшие строки */
SELECT distinct
	`gamer`, `game`
FROM 
	bd1.gamers_games;
    
/*Использование фильтрации значений (предложение WHERE) */
SELECT ALL
    gamers.`name`, games.`game_name`, games.`country` as 'Страна разработчика'
FROM
    `bd1`.`gamers`
WHERE
	`favourite_game` = 102;

/*Операции сравнения "=, <>, <=, >=" */
SELECT DISTINCT
    gamers.`name`, country
FROM
	`bd1`.`gamers`
WHERE
	`country` = 'China';
    
SELECT 
    gamers.`name`, country
FROM
	`bd1`.`gamers`
WHERE
	`country` <> 'China';
    
SELECT 
    gamers.`name`, country
FROM
	`bd1`.`gamers`
WHERE
	`country` > 'China';

/*При сравнении дат с помощью операторов >, <, >=, <= допускается запись YYYYMMDD без проверки конкретных допустимых значений MM и DD */
SELECT `gamers_games`.`idgamers_games`,
    `gamers_games`.`gamer`,
    `gamers_games`.`game`,
    `gamers_games`.`date`,
    `gamers_games`.`time`
FROM `bd1`.`gamers_games`
WHERE 
	`date` > 20200000;
    
SELECT `gamers_games`.`idgamers_games`,
    `gamers_games`.`gamer`,
    `gamers_games`.`game`,
    `gamers_games`.`date`,
    `gamers_games`.`time`
FROM `bd1`.`gamers_games`
WHERE 
	`time` > '00:10:10';
    
/* Логические операторы при составных условиях*/
SELECT `gamers_games`.`idgamers_games`,
    `gamers_games`.`gamer`,
    `gamers_games`.`game`,
    `gamers_games`.`date`,
    `gamers_games`.`time`
FROM `bd1`.`gamers_games`
WHERE 
	`gamers_games`.`game` = '100' or `game` = '106';
    
SELECT `gamers_games`.`idgamers_games`,
    `gamers_games`.`gamer`,
    `gamers_games`.`game`,
    `gamers_games`.`date`,
    `gamers_games`.`time`
FROM `bd1`.`gamers_games`
WHERE 
	`gamers_games`.`game` = '100' AND `date` = '20110711';

/*
AND
		True	False	UNKNOWN
True	True	False	UNKNOWN
False	False	False	False
UNKNOWN	UNKNOWN	False	UNKNOWN

OR
		True	False	UNKNOWN
True	True	True	True
False	True	False	UNKNOWN
UNKNOWN	True	UNKNOWN	UNKNOWN  

NOT
True	False
False	True
UNKNOWN	UNKNOWN
*/

# Результаты сравнения с NULL-значениями

SELECT `gamers`.`idgamers`,
    `gamers`.`name`,
    `gamers`.`country`,
    `gamers`.`favourite_game`,
    `gamers`.`dot`,
    `gamers`.`gamerscol`
FROM `bd1`.`gamers`
WHERE 
	`gamers`.`favourite_game` >= 100
		AND `country` > 'A';

SELECT `gamers`.`idgamers`,
    `gamers`.`name`,
    `gamers`.`country`,
    `gamers`.`favourite_game`,
    `gamers`.`dot`,
    `gamers`.`gamerscol`
FROM `bd1`.`gamers`
WHERE 
	`gamers`.`favourite_game` >= 100
		AND `country` < 'A';
        
# NULL-значения не отбираются при помощи операций сравнения

# Для выборки, содержащей NULL-значения нужно воспользоваться конструкцией IS NULL
SELECT `gamers`.`idgamers`,
    `gamers`.`name`,
    `gamers`.`country`,
    `gamers`.`favourite_game`,
    `gamers`.`dot`,
    `gamers`.`gamerscol`
FROM `bd1`.`gamers`
WHERE 
	`gamers`.`favourite_game` >= 100
		AND `country` > 'A'
        OR `country` IS NULL 
        AND favourite_game is not NULL;


SELECT `gamers`.`idgamers`,
    `gamers`.`name`,
    `gamers`.`country`,
    `gamers`.`favourite_game`,
    `gamers`.`dot`,
    `gamers`.`gamerscol`
FROM `bd1`.`gamers`
WHERE 
	`gamers`.`favourite_game` >= 100
		AND `country` > 'A'
        OR `country` IS NULL 
        AND NOT favourite_game IS NULL;