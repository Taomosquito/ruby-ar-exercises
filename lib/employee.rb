class Employee < ActiveRecord::Base
  belongs_to :store

  validate :must_always_have_first_name_present,
    :must_always_have_a_last_name_present,
    :hourly_rate_must_be_valid,
    :must_belong_to_store

  def must_always_have_first_name_present
    if first_name.blank?
      errors.add(:first_name, "must be present")
    end
  end

  def must_always_have_a_last_name_present
    if last_name.blank?
      errors.add(:last_name, "must be present")
    end
  end

  def hourly_rate_must_be_valid
    if hourly_rate.blank? || hourly_rate < 40 || hourly_rate > 200
      errors.add(:hourly_rate, "must be an integer between 40 and 200")
    end
  end

  def must_belong_to_store
    if store.blank?
      errors.add(:store, "must be assigned to a store")
    end
  end

end
