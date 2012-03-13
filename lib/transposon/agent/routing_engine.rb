require 'transposon/agent/routing_engine/route_table'

module Transposon
  module Agent
    
    # The Agent Routing Engine selects a route from a forwarding database where
    # the message should be passed next, in order to get the message closer
    # to its resource endpoint destination.
    class RoutingEngine
      
      # The route table currently used by the RoutingEngine to route messages
      attr_reader :route_table
      
      # Create a new RoutingEngine. This routing engine has an empty RouteTable, unless
      # one is specified in the options
      # @option options [RouteTable] :route_table Configure the RoutingEngine to utilize the given RouteTable
      def initialize(options = Hash.new)
        @route_table = options[:route_table] || RouteTable.new
      end
      
      # Return the resource to which the given message should be delivered next
      def route message
        available_routes = route_table.available_routes_for_message(message)
      end
    end
  end
end
