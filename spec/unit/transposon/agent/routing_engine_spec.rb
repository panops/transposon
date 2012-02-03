require 'unit/helper'

describe Transposon::Agent::RoutingEngine do
  
  it 'is a class' do
    described_class.should be_a(Class)
  end
  
  describe 'an instance' do
    
    it 'has a route table' do
      subject.should respond_to(:route_table)
    end
    
    it 'responds to #route' do
      subject.should respond_to(:route)
    end
    
    context 'routing a message' do
    
    end
    
  end
end
