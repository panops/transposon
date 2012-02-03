module Transposon
  module Agent
    
    # The Agent Routing Engine selects a route from a forwarding database where
    # the message should be passed next, in order to get the message closer
    # to its resource endpoint destination.
    class RoutingEngine
      
      # The route table currently used by the RoutingEngine to route messages
      attr_reader :route_table
      
      # Return the resource to which the given message should be delivered next
      def route message
      end
    end
  end
end
