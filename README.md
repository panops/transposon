Transposon
==========
A brokerless resource-oriented agent-based message routing and delivery system.

Installation and Getting Started
--------------------------------
Installation is accomplished by installing the gem 'transposon'.

    $ gem install transposon

Once the gem is installed the command 'txpsn' will allow you to start, stop, and
manage the transposon agent.

    $ txpsn agent start
      Starting Transposon Agent...
      Transposon Agent started.
    $ txpsn agent status --summary
      Transposon Agent @ localhost.localdomain
      00:00:10s Uptime - 0% Utilization
      1 Connected Agents - 1 Directly Known Agents - 1 Known Agents Total
      0 Local Resource Endpoints Known - 0 Total Resource Endpoints Known
      0 Resource Routes Known (Resource Routes of Length: 1(0) 2(0) 3(0) >3(0))
    $ txpsn agent stop
      Stopping Transposon Agent...
      Transposon Agent stopped.
    $

Architecture
------------
Transposon has a two-layer on-node architecture.

The first layer, where most functionality is implemented, is an agent, running 
persistently in the background, which manages inter-node communications, message 
persistence and reliability, notifications -- it implements the transposon mesh 
infrastructure which routes messages from resource endpoint to resource endpoint.

The second layer, a thin client shim, which contains code which aids agent/process 
communication, allows the process to register resource endpoints or routes to 
resource endpoints, debugging the transposon mesh and agent, and provides helpers 
for sending and receiving messages to and from resources within the transposon mesh.

General Architectural Diagram:
      -------------------------------------------------------------------------------------
      |                Compute Resource                                            ....   |
      |                                        --------------------------       ----------|
      | ---------                              | ----------             |<----> |Resource||
    ,-->| Agent | <--- Unix Domain Socket ---> | | Client | Application |       |--------||
    | | ---------             |                | ----------             |<----> |Resource||
   T| |                       |                --------------------------       ----------|
   C| |                       |                                                      |    | ----------
   P| |                       |                                                      `----->|Resource|-> ...
   /| |                        `-------------->          .......                    .....  | ----------
   I| -------------------------------------------------------------------------------------
   P|
    | -------------------------------------------------------------------------------------    
    | |                Compute Resource                                            ....   |
    | |                                        --------------------------       ----------|
    | | ---------                              | ----------             |<----> |Resource||
    |-->| Agent | <--- Unix Domain Socket ---> | | Client | Application |       |--------||
    | | ---------             |                | ----------             |<----> |Resource||
   T| |                       |                --------------------------       ----------|
   C| |                       |                                                      |    | ----------
   P| |                       |                                                      `----->|Resource|-> ...
   /| |                       `-------------->          .......                    .....  | ----------
   I| -------------------------------------------------------------------------------------
   P|
    | -------------------------------------------------------------------------------------
    | |                Compute Resource                                            ....   |
    | |                                        --------------------------       ----------|
    | | ---------                              | ----------             |<----> |Resource||
    |-->| Agent | <--- Unix Domain Socket ---> | | Client | Application |       |--------||
    | | ---------             |                | ----------             |<----> |Resource||
   T| |                       |                --------------------------       ----------|
   C| |                       |                                                      |    | ----------
   P| |                       |                                                      `----->|Resource|-> ...
   /| |                       `-------------->          .......                    .....  | ----------
   I| -------------------------------------------------------------------------------------
   P|
    `-->...................................................................................

Agent Administration
--------------------

Usage
-----
