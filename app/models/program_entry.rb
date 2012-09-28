class ProgramEntry < ActiveRecord::Base
  belongs_to :program
  belongs_to :session

  attr_accessible :slot, :track, :comment, :span_entire_row
  attr_accessible :session_id, :program_id
  
  def topic_class
    topic = session ? session.topic_class : ""
  end

end
