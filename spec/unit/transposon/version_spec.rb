require 'unit/helper'

describe Transposon::Version do
  
  it 'is a module' do
    described_class.should be_a(Module)
  end
  
  describe '#major' do
    
    subject{ described_class.major }
    
    it 'returns a string-ish' do
      subject.should be_a_kind_of(String)
    end
    
  end
  
  describe '#minor' do
    
    subject{ described_class.minor }
    
    it 'returns a string-ish' do
      subject.should be_a_kind_of(String)
    end
    
  end
  
  describe '#patch' do
    
    subject{ described_class.patch }
    
    it 'returns a string-ish' do
      subject.should be_a_kind_of(String)
    end
    
  end
  
  describe '#to_standard_version' do
    
    subject{ described_class.to_standard_version }
    
    it 'returns an Array' do
      subject.should be_an(Array)
    end
    
    it 'has 3 elements' do
      subject.size.should be(3)
    end
    
    before :each do
      @random_value = rand(100).to_s
    end
    
    it 'has a first element which is equal to #major' do
      described_class.expects(:major).once.returns(@random_value)
      subject[0].should eq(@random_value)
    end
    
    it 'has a second element which is equal to #minor' do
      described_class.expects(:minor).once.returns(@random_value)
      subject[1].should eq(@random_value)
    end
    
    it 'has a third element which is equal to #patch' do
      described_class.expects(:patch).once.returns(@random_value)
      subject[2].should eq(@random_value)
    end
    
  end
  
  describe '#to_standard_version_s' do
    
    subject{ described_class.to_standard_version_s }
    
    it 'returns a string-ish' do
      subject.should be_a_kind_of(String)
    end
    
    it 'is the result of calling to_standard_version and joining the result with periods' do
      subject.should eq(described_class.to_standard_version.join('.'))
    end
    
  end
  
end
