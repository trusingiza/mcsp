class FamilyPlanningReport < ActiveRecord::Base
  belongs_to :facility
  scope :recent, lambda{ |num| order('created_at desc').limit(num) }
  def name
    return "FP Report #" + self.id.to_s + ": " + "#{facility.name}" + '-'+ self.report_period.to_s
  end
end
