class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :from_field
      t.references :field, foreign_key: true
      t.integer :h0
      t.integer :h1
      t.integer :h2
      t.integer :h3
      t.integer :h4
      t.integer :h5
      t.integer :h6
      t.integer :h7
      t.integer :h8
      t.integer :h9
      t.integer :h10
      t.integer :h11
      t.integer :h12
      t.integer :h13
      t.integer :h14
      t.integer :h15
      t.integer :h16
      t.integer :h17
      t.integer :h18
      t.integer :h19
      t.integer :h20
      t.integer :h21
      t.integer :h22
      t.integer :h23
      t.integer :h24
      t.integer :h25
      t.integer :h26
      t.integer :h27
      t.integer :h28
      t.integer :h29
      t.integer :h30
      t.integer :h31
      t.integer :h32
      t.integer :h33
      t.integer :h34
      t.integer :h35
      t.integer :h36
      t.integer :h37
      t.integer :h38
      t.integer :h39
      t.integer :h40
      t.integer :h41
      t.integer :h42
      t.integer :h43
      t.integer :h44
      t.integer :h45
      t.integer :h46
      t.integer :h47

      t.timestamps
    end
  end
end
