module Transposon
  module Agent
    class RoutingEngine
      
      # The RouteTable is a collection of Route objects. It is responsible for
      # maintaining the set of available, and potentially available Routes for
      # use by the RoutingEngine
      class RouteTable
        
        # Retrieve the set of available routes for a given message
        # @return [ Array[Transposon::Core::Models::Route] ] The routes which will route the given message.
        def available_routes_for_message message
          []
        end
        
      end
      
    end
  end
end
