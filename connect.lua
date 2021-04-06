local socket = require('socket');

-- Connecting to the daemon as a client
local client = socket.connect("0.0.0.0", 8330);

-- Writing to Freechains host
client:send("FC v0.8.3 chains list\n");
msg = client:receive();
print (msg);

client:close();
