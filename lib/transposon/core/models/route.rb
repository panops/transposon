require 'transposon/core/model'

module Transposon
  module Core
    module Models
      
      # Represents a path for a Message from a source to a destination Resource
      # via Resources
      class Route
        extend Transposon::Core::Model::ClassMethods
        include Transposon::Core::Model::InstanceMethods
        
      end
    end
  end
end
