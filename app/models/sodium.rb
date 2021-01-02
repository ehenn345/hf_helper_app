class Sodium < ApplicationRecord
  belongs_to :user

  def sodium_daily_total
    sodiums_for_day = user.sodia.where({date: "2020-12-01"})
    p sodiums_for_day
    total_sodium_for_day = 0
    sodiums_for_day.each do |sodium_for_day|
      total_sodium_for_day += sodium_for_day[:input_sodium]
    end
    p "Total sodium"
    p total_sodium_for_day
  end

end
