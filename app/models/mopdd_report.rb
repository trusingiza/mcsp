class MopddReport < ActiveRecord::Base
  belongs_to :facility
  def name
    "" 
  end
end
