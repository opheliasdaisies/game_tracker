class CreateUsersGamesAndGenresTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.text :bio
      t.timestamps
    end

    create_table :games do |t|
      t.string :title
      t.integer :rating
      t.text :description
      t.timestamps
    end

    create_table :genres do |t|
      t.string :name
      t.text :bio
      t.timestamps
    end

    create_table :users_games do |t|
      t.belongs_to :user
      t.belongs_to :game
    end

    create_table :games_genres do |t|
      t.belongs_to :game
      t.belongs_to :genre
    end
  end
end
