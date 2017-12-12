require "spec_helper"

RSpec.describe ActAsStateable do
  it "has a version number" do
    expect(ActAsStateable::VERSION).not_to be nil
  end

  it "has a flag" do
    expect(job.state).to eq(1)
  end
  
  it "has a state" do 
    expect(job.state).to eq(1)
  end
  
  it "has a configurable column name" do
    #ActiveRecord::Job::Columns[:state]
    # is in db.column.name == "state"
    #acts_as_stateable :mycolumnname
  end
  
  it "raises an error if the configured column does not exist" do
    #r = InvalidRecord.new
  end
  
  it "raises no error if the configured column does exist" do
    #r = ValidRecord.new 
  end
  
  it "can configure itself" do
    #  
  end
  
  it "does something useful" do
    expect(false).to eq(true)
  end
end
