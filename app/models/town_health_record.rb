class TownHealthRecord < ActiveRecord::Base
	def initialize(statistics)
		@town = statistics[:town]
		@population = statistics[:population]
		@sub_19_population = statistics[:sub_19_population]
		@over_65_population = statistics[:over_65_population]
		@per_capita_income = statistics[:per_capita_income]
		@persons_living_beneath_200percent_poverty = statistics[:persons_living_beneath_200percent_poverty]
		@percentage_of_people_beneath_200percent_poverty = statistics[:percentage_of_people_beneath_200percent_poverty]
		@percent_of_adequate_prenatal_care = statistics[:percent_of_adequate_prenatal_care]
		@percent_of_c_section_deliveries = statistics[:percent_of_c_section_deliveries]
		@infant_deaths = statistics[:infant_deaths]
		@infant_mortality_rate = statistics[:infant_mortality_rate]
		@percent_of_low_birthweight_children = statistics[:percent_of_low_birthweight_children]
		@percent_of_multiple_births = statistics[:percent_of_multiple_births]
		@percent_of_publicly_financed_prenatal_care = statistics[:percent_of_publicly_financed_prenatal_care]
		@percent_of_teen_births = statistics[:percent_of_teen_births]
	end
end
