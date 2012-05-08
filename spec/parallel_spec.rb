require File.expand_path("../spec_helper", __FILE__)

describe Parallel do
  
  before do
    @list = [1,2,3]
  end
  
  it "#map" do
    data = Parallel.map(@list) do |i|
      i * 2
    end
    data.should == [2,4,6]
  end

  it "#each" do
    Parallel.stubs(:each).returns(@list)
    data = Parallel.each(@list) do |i|
      i
    end
    data.should == [1,2,3]
  end

end
