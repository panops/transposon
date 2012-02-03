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

Agents run on Compute resources, they speak to applications via a unix domain socket which
connect those agents to resources and other agents, either directly or indirectly via network links, serial
links, SSH links, basically any medium for which an application is written, which interfaces with
the agent. Applications may export virtual resources to the transposon mesh whose state (which
drives the state of other devices) may be altered via messages from other resources on the transposon
mesh. Agents are aware on which resources and links messages transit, and they may use things like serial
links to bypass broken or damaged TCP/IP infrastructure. This architecture allows transposon to route around
network failures via any available medium -- one of the major issues in designing a system which is supposed
to configure the network on which it itself runs. By separating the Agent from the Gateway (which does the actual
transmission via the medium) we enable organizations to create custom media for message transit (one, for example,
could implement a fiber channel or MPLS gateway application for message transit, even if one was not included with transposon).

Example Architecture Diagram:

     -------------------------------------------------------------------------------------
     | Compute Resource                                                                  |   
     |                                                                            ....   |
     |                                        --------------------------       ----------|     RS232     --------------
     | ---------                              | ----------             |<----> |Resource|--------------->|  Resource  |
     | | Agent | <--- Unix Domain Socket ---> | | Client | Application |       |--------||               |  _________ |
     | ---------             |                | ----------             |<----> |Resource||               |  |R|R|R|R| |
     |                       |                --------------------------       ----------|               ----|-|-------
     |                       |                                                       |   |                   | |
     |                       |                --------------------------             |   | ----------        | | T
     |                       |                | ----------             |              `--->|Resource|-> ...  | | C
     |                       `--------------> | | Client | Application |<------,         | ----------        | | P
     |                                        | ----------             |       |         |      ------------ | | /
     |                                        --------------------------       `--------------->| Resource |-' | I
     |                                                                                   |      | (NIC)    |   | P
     |                                                   ....                            |      -----------    | v
     |                                                                                   |                     | [
     -------------------------------------------------------------------------------------                     | 4
     -------------------------------------------------------------------------------------                     | |
     | Compute Resource                                                                  |                     | 6
     |                                                                            ....   |                     | ]
     |                                        --------------------------       ----------|                     | o
     | ---------                              | ----------             |<----> |Resource||                     | n
     | | Agent | <--- Unix Domain Socket ---> | | Client | Application |       |--------||                     | E
     | ---------             |                | ----------             |<----> |Resource||                     | t
     |                       |                --------------------------       ----------|                     | h
     |                       |                                                       |   |                     | e
     |                       |                --------------------------             |   | ----------          | r
     |                       |                | ----------             |              `--->|Resource|-> ...    | n
     |                       `--------------> | | Client | Application |<------,         | ----------          | e
     |                                        | ----------             |       |         |      ------------   | t
     |                                        --------------------------       `--------------->| Resource |---'
     |                                                                                   |      | (NIC)    |
     |                                                   ....                            |      ------------
     |                                                                                   |
     -------------------------------------------------------------------------------------

                                              ....

Agent Administration
--------------------

Usage
-----
