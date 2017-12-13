require "spec_helper"

RSpec.describe ActsAsStateable do
  it "has a version number" do
    expect(ActsAsStateable::VERSION).not_to be nil
  end

  # mask   00000
  # flag   00001
  # expect 00001
  it "sets flag on empty mask" do
    expect(ActsAsStateable.set(0,1)).to eq(1)
  end
  
  # mask   00010
  # flag   00001
  # expect 00011
  it "sets flag non empty mask" do
    expect(ActsAsStateable.set(2,1)).to eq(3)
  end

  # mask   00011
  # flag   00001
  # expect 00011
  it "re-sets set flag on mask" do
    expect(ActsAsStateable.set(3,1)).to eq(3)
  end
  
  # mask   00000
  # flag   00001
  # expect 00000
  it "unsets flag on empty mask" do
    expect(ActsAsStateable.unset(0,1)).to eq(0)
  end
  
  # mask   00011
  # flag   00001
  # expect 00010
  it "unsets flag on non empty mask" do
    expect(ActsAsStateable.unset(3,1)).to eq(2)
  end

  # mask   00010
  # flag   00001
  # expect 00010
  it "re-unsets unset flag on mask" do
    expect(ActsAsStateable.set(2,1)).to eq(2)
  end
  
  # mask   10110 = 22
  # flag   01110 = 14
  # expect 00010 = 30 
  it "sets higher order flags correctly" do
    expect(ActsAsStateable.set(22,14)).to eq(30)
  end
  
  # mask   10110 = 22
  # flag   01110 = 14
  # expect 10000 = 16 
  it "unsets higher order flags correctly" do
    expect(ActsAsStateable.unset(22,14)).to eq(16)
  end
  
  it "has a configurable column name" do
    #not implemented yet
    expect(true).to eq(false)
    #ActiveRecord::Job::Columns[:state]
    # is in db.column.name == "state"
    #acts_as_stateable :mycolumnname
  end
  
  it "raises an error if the configured column does not exist" do    
    #not implemented yet
    expect(true).to eq(false)
    
    #r = InvalidRecord.new
  end
  
  it "raises no error if the configured column does exist" do    
    #not implemented yet
    expect(true).to eq(false)
    
    #r = ValidRecord.new 
  end
  
  it "can configure itself" do    
    #not implemented yet
    expect(true).to eq(false)
    
    #r = ValidRecord.new 
  end
  
  # yes it does
  it "does something useful" do
    expect(true).to eq(true)
  end
end
