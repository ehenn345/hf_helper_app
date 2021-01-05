class Sodium < ApplicationRecord
  belongs_to :user

  def sodium_daily_total(date)
    sodiums_for_day = user.sodia.where({date: date})
    p sodiums_for_day
    total_sodium_for_day = 0
    sodiums_for_day.each do |sodium_for_day|
      total_sodium_for_day += sodium_for_day[:input_sodium]
    end
    p "Total sodium"
    p total_sodium_for_day
  end

end
