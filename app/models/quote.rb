class Quote < ActiveRecord::Base
  attr_accessible :date, :link, :quote, :source
  
  def as_json(options={})
    { 
      :quote => self.quote,
  		:date => self.date,
  		:source => self.source,
  		:url => self.link
    }
  end
  
end
