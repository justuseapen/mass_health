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
	TownHealthRecord.new({
		town: row['Geography'],
		population: row['total pop, year 2005'],
		sub_19_population: row['age 0-19, year 2005'],
		over_65_population: row['age 65+, year 2005'],
		per_capita_income: row['Per Capita Income, year 2000'],
		persons_living_beneath_200percent_poverty: row['Persons Living Below 200% Poverty, year 2000'],
		percentage_of_people_beneath_200percent_poverty: row['% all Persons Living Below 200% Poverty Level, year 2000'],
		percent_of_adequate_prenatal_care: row['% adequacy prenatal care (kotelchuck)'],
		percent_of_c_section_deliveries: row['% C-section deliveries, 2005-2008'],
		infant_deaths: row['Number of infant deaths, 2005-2008'],
		infant_mortality_rate: row['Infant mortality rate (deaths per 1000 live births), 2005-2008'],
		percent_of_low_birthweight_children: row ['% low birthweight 2005-2008'],
		percent_of_multiple_births: row['% multiple births, 2005-2008'],
		percent_of_publicly_financed_prenatal_care: row['% publicly financed prenatal care, 2005-2008'],
		percent_of_teen_births: row['% teen births, 2005-2008']
		})
end