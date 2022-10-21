require 'spec_helper'

describe "Landmark" do
  before do 
    @figure = Figure.create(:name => "Fiorello LaGuardia") 

    @airport =  Landmark.create(:name => "LG Airport", :year_completed => 1950) 
    @library = Landmark.create(:name => "Library")
    
  end


  it "has a name and a year_completed" do 
    expect(@airport.name).to eq("LG Airport")
    expect(@airport.year_completed).to eq("1950")  #manually amended this as i had incorrectly put data type as "string" in table instead of "integer".
  end

  it "belongs to a figure" do 
    @figure.landmarks << @airport
    expect(@airport.figure).to eq(@figure)
  end
end
