require 'unit/helper'

describe Transposon::Client::Examples::CommandLineInterface do
  
  it 'is a class' do
    described_class.should be_a(Class)
  end
  
  describe 'an instance' do
    
    it 'responds to #run!' do
      subject.should respond_to(:run!)
    end
    
  end
  
end
