require "acts_as_stateable/version"

#jobs.each do |job|
#    job.get_it_done unless !job.valid 
#    job.get_it_done unless job.invalid
#    job.get_it_done unless job.has_flag(1)
#    
#

#end

module ActsAsStateable
  def self.set(mask, flag)
    mask |= flag
  end
  
  def self.unset(mask, flag)
      mask &= ~flag
  end
  
  def mask
     @m 
  end
  
  def mask=(flag)
     @m |= flag 
  end
end


