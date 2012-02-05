require 'unit/helper'

describe Transposon::Core::Model do
  
  it 'is a module' do
    described_class.should be_a(Module)
  end
  
  describe described_class::InstanceMethods do
    
    it 'is a module' do
      described_class.should be_a(Module)
    end
    
  end
  
  describe described_class::ClassMethods do
    
    it 'is a module' do
      described_class.should be_a(Module)
    end
    
  end
  
end
