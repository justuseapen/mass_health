# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

TownHealthRecord.delete_all

attributes = {}
CSV.foreach('./db/data/mass_health_data.csv', headers: true) do |row|
	record = TownHealthRecord.new
	record.town = row['Geography']
	record.total_pop_2005 = row['total pop, year 2005'].gsub(/,/,'').to_i,
	record.under_19_in_2005 = row['age 0-19, year 2005'].gsub(/,/,'').to_i,
	record.over_65_in_2005 = row['age 65+, year 2005'].gsub(/,/,'').to_i,
	record.per_capita_income_in_2000 = row['Per Capita Income, year 2000'].gsub(/,/,'').to_i,
	record.persons_beneath_200percent_poverty = row['Persons Living Below 200% Poverty, year 2000'].to_i,
	record.percentage_of_people_beneath_200percent_poverty = row['% all Persons Living Below 200% Poverty Level, year 2000'].to_f,
	record.percent_adequacy_of_prenatal_care = row['% adequacy prenatal care (kotelchuck)'].to_f,
	record.percent_c_section_deliveries_2005_to_2008 = row['% C-section deliveries, 2005-2008'].to_f,
	record.number_of_infant_deaths_2005_to_2008 = row['Number of infant deaths, 2005-2008'].gsub(/,/,'').to_i,
	record.infant_mortality_rate = row['Infant mortality rate (deaths per 1000 live births), 2005-2008'].to_f,
	record.percent_of_babies_with_low_birthweight = row ['% low birthweight 2005-2008'].to_f,
	record.percent_multiple_births = row['% multiple births, 2005-2008'].to_f,
	record.percent_publicly_financed_prenatal_care = row['% publicly financed prenatal care, 2005-2008'].to_f,
	record.percent_teen_births = row['% teen births, 2005-2008'].to_f

	record.save
end