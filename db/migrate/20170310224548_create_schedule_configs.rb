class CreateScheduleConfigs < ActiveRecord::Migration[5.0]
  def change
    create_table :schedule_configs do |t|
      t.time :open0
      t.time :open1
      t.time :open2
      t.time :open3
      t.time :open4
      t.time :open5
      t.time :open6
      t.time :close0
      t.time :close1
      t.time :close2
      t.time :close3
      t.time :close4
      t.time :close5
      t.time :close6
      t.time :ospecial0
      t.time :ospecial1
      t.time :ospecial2
      t.time :ospecial3
      t.time :ospecial4
      t.time :ospecial5
      t.time :ospecial6
      t.time :especial0
      t.time :especial1
      t.time :especial2
      t.time :especial3
      t.time :especial4
      t.time :especial5
      t.time :especial6
      t.references :field, foreign_key: true

      t.timestamps
    end
  end
end
