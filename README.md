Transposon
==========
A brokerless agent-based message routing and delivery system.

Installation and Getting Started
--------------------------------
Installation is accomplished by installing the gem 'transposon'.

    $ gem install transposon

Once the gem is installed the commaand 'txpsn' will allow you to start, stop, and
manage the transposon agent.

    $ txpsn agent start
      Starting Transposon Agent...
      Transposon Agent started.
    $ txpsn agent status --summary
      Transposon Agent @ localhost.localdomain
      00:00:10s Uptime - 0% Utilization
      1 Directly Known Agents - 1 Known Agents Total
      0 Local Resource Endpoints Known - 0 Total Resource Endpoints Known
      0 Resource Routes Known (Resource Routes of Length: 1(0) 2(0) 3(0) >3(0))
    $ txpsn agent stop
      Stopping Transposon Agent...
      Transposon Agent stopped.
    $

Architecture
------------

Agent Administration
--------------------

Usage
-----
