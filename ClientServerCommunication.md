# Client Server Communication
**The server and clients communicate using RemoteEvents and RemoteFunctions.**
- **Remote Events:** Used for one-way data transfer, like sending a signal from the server to clients or vice versa.
    - clients do not have direct access to the information in the server, the client uses remote events
    to tell the server what it wants to do 
    - best to create remote events in the **`ReplicatedStorage Folder`**
- **Remote Functions:** Used for two-way, request-response interactions where the client sends a request and waits for a response from the server. 

## Remote Events
**There are three way of communicating from the server and client with Remote events**
1. From Client ➡️ Server
2. Server ➡️ Client
3. Server ➡️ To All Clients
**Learn more here ➡️ https://create.roblox.com/docs/scripting/events/remote#quick-reference**

## Remote Functions
____________________________________________________________________

### Client and Server Folder Access
**The client and server can only access folders that are explicitly designated as accessible to them.**

#####  Folders Accessible by the Server
- Server Scripts run on the game server can access and modify any part of the game. 
- **ServerScriptService:** contain server-side scripts and data that should not be tampered with
- **ServerStorage:**

##### Folders Accessible by the Client
- Client Scripts are limited to a read-only view of certain server-controlled folders and their own local data
- These are not folders within the Roblox Studio application's file system but rather are server-side folders replicated to the client to provide game functionality
- **ReplicatedStorage:** holds assets that are replicated from the server to all connected clients
    - things such as models, sounds, and images are placed in this folder so they are available to the client for display or interaction
- **StarterGui:** elements placed in this folder are copied to each player's PlayerGui folder when they join the game
    - GUI elements like buttons, health bars, or menus are placed in this folder allowing the client to display and interact with them. 
- **Workspace:** the client can see and interact with parts of the Workspace that are replicated to them by the server
- **PlayerGui:** each player has their own PlayerGui folder which is a local copy of the StarterGui 
- **ReplicatedFirst:** contents are replicated to the client before any other part of the game


