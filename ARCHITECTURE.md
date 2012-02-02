Transposon System Architecture
==============================
Transposon is responsible for the secure, reliable, high throughput, 
low latency delivery of messages between named resources in the Transposon mesh where no
mesh member is vitally important for the functioning of the mesh. As a design goal, Transposon 
should aim to scale hundreds of thousands of agent nodes, and millions, if not billions, of resource
endpoints. Transposon is not a full mesh system, except logically, and transposon agents connect
and disconnect from neighbors over media as needed to refresh routing tables, exchange messages and
heartbeats, etc. as needed.

Two-Tired Infrastructure
------------------------
Transposon implements these goals with a two tiered architecture. 

The first tier, the agent, is a server process running in the background on a computational resource which accepts and delivers messages via unix
domain sockets. The agent is responsible for maintaining routing tables, managing neighbor communication, collecting
statistics, delivering and routing messages according to maintained route table, and for ensuring its own stability and
the stability of its neighboring agents. Essentialy the agent implements the Transposon messaging mesh and as it is a separate
process, it may be more easily secured.

The second tier, the client, is a small piece of shim code which, when integrated into the application which wishes to 
interact with the Transposon System provides an API for:
 * managing the local agent (dependent on client process privileges)
 * registering and deregistering resource endpoints with the agent
 * sending and receiving messages
 * inspecting the behavior of transposon agent and transposon mesh
