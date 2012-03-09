require 'unit/helper'

describe Transposon::Agent::RoutingEngine do
  
  it 'is a class' do
    described_class.should be_a(Class)
  end
  
  describe 'an instance' do
    
    it 'has a route table' do
      subject.should respond_to(:route_table)
      subject.route_table.should be_a(described_class::RouteTable)
    end
    
    it 'responds to #route' do
      subject.should respond_to(:route)
    end
    
    context 'when created with a given RouteTable via the route_table initialization option' do
      
      let :route_table do
        described_class::RouteTable.new
      end
      
      subject do
        described_class.new :route_table => route_table
      end
      
      it 'uses that RouteTable' do
        subject.route_table.should eql(route_table)
      end
      
    end
    
    context 'routing a message' do
    
    end
    
  end
end
