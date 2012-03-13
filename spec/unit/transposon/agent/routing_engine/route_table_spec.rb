require 'unit/helper'

describe Transposon::Agent::RoutingEngine::RouteTable do
  
  it 'is a class' do
    described_class.should be_a(Class)
  end
  
  context 'when getting the available routes for a message' do
    
    let :message do
      Transposon::Core::Models::Message.new
    end
    
    it 'responds to available_routes_for_message' do
      subject.should respond_to(:available_routes_for_message)
    end
    
    it 'responds with an Array of Routes' do
      subject.available_routes_for_message(message).should be_a_kind_of(Array)
      subject.available_routes_for_message(message).all?{|route| route.is_a?(Transposon::Core::Models::Route) }.should be_true
    end
    
  end
  
end
