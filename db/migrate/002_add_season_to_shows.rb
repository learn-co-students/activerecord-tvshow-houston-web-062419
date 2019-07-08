class AddSeasonToShows < ActiveRecord::Migration[5.2]
    def change 
        add_column :shows, :season, :string
            # t.string :season
        # end
    end
end