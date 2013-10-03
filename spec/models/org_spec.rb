require 'spec_helper'

describe Org do
  it { should have_and_belong_to_many(:causes) }
  it { should have_and_belong_to_many(:activities) }
  it { should have_and_belong_to_many(:ages) }    
  it { should have_one(:legal) } 
  it { should have_many(:branches) }
  it { should have_many(:people) }
  it { should have_many(:locations) }
  it { should have_many(:provinces).through(:locations) }
  it { should have_one(:board)}
  it { should have_one(:advisory)}
  it { should have_many(:programs)}
  it { should have_and_belong_to_many(:affiliations) }
  it { should have_and_belong_to_many(:networks) }
end


describe Activity do
	it { should have_and_belong_to_many(:orgs)}
end

describe Advisory do
	it { should have_many(:people) }
	it { should belong_to(:org) }
end

describe Age do
	it { should have_and_belong_to_many(:orgs)}
end

describe Board do
	it { should have_many(:people) }
	it { should belong_to(:org) }
end

describe Branch do
	it { should belong_to(:org) }
end

describe Cause do
	it { should have_and_belong_to_many(:orgs)}
end

describe Location do
	it { should belong_to(:org) }
	it { should belong_to(:province) }
end

describe Person do
	it { should belong_to(:relationable)}
end

describe Province do
	it { should have_many(:locations)}
	it { should have_many(:orgs).through(:locations) }
end

describe Legal do
  it { should belong_to(:org)}
end

describe Objective do
  it { should belong_to(:org)}
end

describe Program do
  it { should belong_to(:org)}
end

describe Affiliation do
  it { should have_and_belong_to_many(:orgs)}
end

describe Network do
  it { should have_and_belong_to_many(:orgs)}
end

describe Prize do
  it { should belong_to(:org)}
end

describe Balance do
  it { should belong_to(:org)}
end

describe Income do
  it { should belong_to(:org)}
end

describe Bigdonor do
  it { should belong_to(:org)}
end
