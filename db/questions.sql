-- What 3 towns have the highest population of citizens that are 65 years and older?

SELECT town,over_65_in_2005 FROM town_health_records WHERE town != 'Massachusetts Total' ORDER BY over_65_in_2005 DESC LIMIT 3;

TownHealthRecord.order(over_65_in_2005: :desc).limit(3).offset(1)

--What 3 towns have the highest population of citizens that are 19 years and younger?

SELECT town,under_19_in_2005 FROM town_health_records WHERE town != 'Massachusetts Total' ORDER BY under_19_in_2005 DESC LIMIT 3;

TownHealthRecord.order(under_19_in_2005: :desc).limit(3).offset(1)

--What 5 towns have the lowest per capita income?

SELECT town,per_capita_income_in_2000 FROM town_health_records WHERE per_capita_income_in_2000 != 0.0 ORDER BY per_capita_income_in_2000 LIMIT 5;

TownHealthRecord.order('per_capita_income_in_2000').limit(5)

--Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?

SELECT town,percent_teen_births FROM town_health_records WHERE town != 'Boston''Becket''Beverly' ORDER BY percent_teen_births DESC LIMIT 1;

TownHealthRecord.where(:town != 'Boston' || :town != 'Becket' || :town != 'Beverly').order(percent_teen_births: :desc).limit(1)

--Omitting Boston, what town has the highest number of infant mortalities?

SELECT town,number_of_infant_deaths_2005_to_2008 FROM town_health_records ORDER BY number_of_infant_deaths_2005_to_2008 DESC OFFSET 2 LIMIT 1;

TownHealthRecord.order(number_of_infant_deaths_2005_to_2008: :desc).limit(1).offset(2)