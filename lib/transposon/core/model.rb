module Transposon
  module Core
    
    # An inclusion point for common model functionality like
    # serialization, validation, etc. If you want to create a new
    # compliant model, include the Model::InstanceMethods module and
    # extends the Model::ClassMethods module.
    module Model
      
      # An inclusion point for common model class functionality. Like vivification
      # of Class instances from serialized formats, validation macros for new instances, etc.
      module ClassMethods
      end
      
      # An inclusion point for common model instance functionality like serialization
      # of existing model instances.
      module InstanceMethods
      end
      
    end
    
  end
end
