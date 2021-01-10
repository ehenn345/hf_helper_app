class Weight < ApplicationRecord
  belongs_to :user
  
  def weight_difference
    difference = user.weights.last[:current_weight] -
    user.weights.slice(-2)[:current_weight]
    if difference >= 0
      p "You've gained + #{difference} lbs from yesterday"
    elsif difference >= 2
      p "Your weight gain in 24 hours is #{difference} lbs. Notify your provider immediately."
    else
      p "You're weight loss is {difference} lbs from yesterday."
    end
  end

  def weekly_weight_difference
    weekly_difference = user.weights.last[:current_weight] - user.weights.slice(-7)[:current_weight]
    if weekly_difference >= 5
      p weekly_difference
      p "Your weight gain over the past 7 days is #{weekly_difference} lbs. Notify your provider immediately."
    else
      p "Your weight gain in the past 7 days is #{weekly_difference} lbs."
    end
  end
end
