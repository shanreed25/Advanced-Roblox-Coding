# 🔮 Multi-Player Model: Server Client Model
- a central server maintains the game's state and syncs it with multiple player clients
- any Roblox game follows this model 
- the server and client transmit data back and forth using scripts
- View a drawing of this [here](https://create.roblox.com/docs/projects/client-server)
 
## 🪄 Server
- handles critical game logic, physics, and data replication, ensuring all clients receive the same information and maintaining fair, secure gameplay
- oversees the whole game, receives input from clients and distributes information back to them
- represents the central game logic and state that all players interact with
    - when something happens in the server, it will be replicated to be shown to every player in the server from their point of view
- **Server-Side Scripts (Server Scripts)** 
    - manage crucial game mechanics, data, and security, as they are not directly accessible or modifiable by individual players
    - transmits data from the server to all clients
    - camera is directed over the entire game, not one specific player
    - if we want to change something through a script, that is replicated(shown) for all players
    - manage game-winning conditions, player scores, or grant in-game currency because these actions must be controlled by the server to ensure fairness and security. 

## 🪄 Clients
- the player's machines that render the experience and run client-specific scripts, communicating with the server
- each player's device (PC, mobile, console) acts as a client, receiving data from the server to render the game and handle user input
- represents an individual player's instance of the game running on their device
    - they see every thing from their point of view
-  **Client-Side Scripts (Local Scripts)** 
    - handle player-specific interactions, UI elements, and visual effects that are only visible to that particular player
    - from the client to server
    - camera is directed towards the player
    - if we want to change something through a script, that is replicated(shown) for only one player
    - control visual effects on a player's screen, play sound effects, or manage UI elements like buttons, as these are specific to each player's view. 

## 🎛️ Roblox Studio: Client and Server View
- In Roblox Studio when you click `Test ➡️ Play` you will see the game frome the client/player perspective
- You can toggle between the client and server view
    - ![toggle-client-server-view](./images/toggle-client-server-view.png)

## 🧪 Testing: Client and Server Scripts
- when we run a script on the client you will see the output in blue
- when we run a script on the server you will see the output in green

![alt text](./images/client-server-script-output.png)

## 📡 Communication
**The server and clients communicate using [RemoteEvents](./ClientServerCommunication.md#remote-events) and [RemoteFunctions](./ClientServerCommunication.md#remote-functions).** 

## 🗃️ Data Model
**The server maintains the authoritative data model, which is then replicated to clients.**

## 🔒 Security
**By handling critical game logic on the server, Roblox prevents exploitation and hacking, as clients cannot directly alter game-critical data.**


