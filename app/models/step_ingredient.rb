# == Schema Information
#
# Table name: step_ingredients
#
#  id            :bigint           not null, primary key
#  amount        :decimal(, )      not null
#  condition     :string
#  unit          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ingredient_id :bigint           not null
#  step_id       :bigint           not null
#
# Indexes
#
#  index_step_ingredients_on_ingredient_id  (ingredient_id)
#  index_step_ingredients_on_step_id        (step_id)
#
# Foreign Keys
#
#  fk_rails_...  (ingredient_id => ingredients.id)
#  fk_rails_...  (step_id => steps.id)
#
class StepIngredient < ApplicationRecord
  belongs_to :step
  belongs_to :ingredient

  validates :amount, :step, :ingredient, presence: true


  accepts_nested_attributes_for :step
  accepts_nested_attributes_for :ingredient
end
