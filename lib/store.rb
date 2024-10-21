class Store < ActiveRecord::Base
  has_many :employees

  validate :name_must_always_be_at_least_3_characters,
  :annual_revenue_must_be_integer_greater_than_or_equal_to_0,
  :all_fields_must_be_present,
  :must_carry_apparel

  def name_must_always_be_at_least_3_characters
    if name.blank? || name.length < 3
      errors.add(:name, "store name must be at least 3 characters in lenght")
    end
  end

  def annual_revenue_must_be_integer_greater_than_or_equal_to_0
    if !annual_revenue.is_a?(Integer) || annual_revenue < 0
      errors.add(:annual_revenue, "annual revenue must be both an integer and greater than or equal to 0")
    end
  end

  def all_fields_must_be_present
    if annual_revenue.blank? || mens_apparel.nil? || womens_apparel.nil?
      error_message = "Annual Revenue: #{annual_revenue}, Mens Apparel: #{mens_apparel}, Womens Apparel: #{womens_apparel}. All fields must be present."
      errors.add(:base, error_message)
    end
  end

  def must_carry_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:base, "the store must carry apparel")
    end
  end
end
