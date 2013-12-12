class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :town
      t.integer :total_pop_2005
      t.integer :under_19_in_2005
      t.integer :over_65_in_2005
      t.decimal :per_capita_income_in_2000
      t.integer :persons_beneath_200percent_poverty
      t.decimal :percentage_of_people_beneath_200percent_poverty
      t.decimal :percent_adequacy_of_prenatal_care
      t.decimal :percent_c_section_deliveries_2005_to_2008
      t.integer :number_of_infant_deaths_2005_to_2008
      t.decimal :infant_mortality_rate
      t.decimal :percent_of_babies_with_low_birthweight
      t.decimal :percent_multiple_births
      t.decimal :percent_publicly_financed_prenatal_care
      t.decimal :percent_teen_births

      t.timestamps
    end
  end
end
