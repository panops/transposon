module Transposon
  # Transposon ruby client functionality lives within this organizational module.
  # Transposon is split into a messaging agent, which typically runs as its own service
  # on each independent machine running within the Transposon mesh, and a client, which is
  # ideally a small shim for performing three simple tasks: sending well formatted messages 
  # into the Transposon mesh, specifying to the Transposon agent the kinds of messages in which
  # it is interested, and responding correctly to being notified that messages of interest are
  # available and retrieving said messages. These modules implement that client and its API.
  #
  # NOTE: Requiring this file does not automatically require transposon/client/examples.
  module Client
  end
end
