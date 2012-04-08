require 'spec_helper'

describe User do

  before(:each) do
    @attr = { :name => "Example User", :email => "user@example.com" }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@attr).should be_valid
  end

  it "should require a name" do
    User.new(@attr.merge(:name => "")).should_not be_valid
  end

  it "should require a name" do
    User.new(@attr.merge(:email => "")).should_not be_valid
  end

  it "should reject names that are too long" do
    User.new(@attr.merge(:name => "a" * 51)).should_not be_valid
  end

  it "should reject email addresses identical up to case" do
    User.create!(@attr.merge(:email => @attr[:email].upcase))
    User.new(@attr).should_not be_valid
  end
end