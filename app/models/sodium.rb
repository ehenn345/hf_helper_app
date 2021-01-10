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

  # def sodium_left(date)
  #   sodium_total = sodium_daily_total.where({date: date})
  #   sodium_left = user.sodium_limit - sodium_total
  #   p sodium_left
  # end

end
