require 'unit/helper'

describe Transposon::Core::Models::Route do
  
  it 'is a class' do
    described_class.should be_a(Class)
  end
  
  it 'extends Core::Model ClassMethods' do
    described_class.singleton_class.included_modules.should include(Transposon::Core::Model::ClassMethods)
  end
  
  it 'includes Core::Model InstanceMethods' do
    described_class.included_modules.should include(Transposon::Core::Model::InstanceMethods)
  end
  
end
