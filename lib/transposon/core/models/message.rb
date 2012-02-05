require 'transposon/core/model'

module Transposon
  module Core
    module Models
      
      # Represents a single message within the transposon system. Messages are the
      # transactional unit within the transposon system.
      class Message
        extend Transposon::Core::Model::ClassMethods
        include Transposon::Core::Model::InstanceMethods
        
      end
    end
  end
end
