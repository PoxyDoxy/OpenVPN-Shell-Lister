# OpenVPN Shell Lister (OpenVPNCheck)
### What this does
- The Goal of this Script is to show all the connected clients in the OpenVPN Log.
- This Script will update every 10 seconds to show you Active Clients.
- This script loops infinitely, and doesn't take up too much screen space when displaying its output.

### How to use
- Place the Script in a common location, such as __/bin/__ (so you can call it from anywhere)
- Mark the Script as Executable.
<pre>chmod +x openvpncheck.sh</pre>
- Run the Script with Sudo if it says you don't have permission.
<pre>sudo openvpncheck.sh</pre>
- Use Ctrl+C to Exit the Script.

#### Optional
- You can remove the __.sh__ extention if you want, and just run it by typing __openvpncheck__

### Tips
- It will clear your terminal every 9 seconds, It's a good idea to run it in a multiplexer such as __tmux__ so you can multitask.
- The OpenVPN Log File only updates every 10 seconds, so don't bother making it faster.

It's not a Fancy way to view your OpenVPN clients, but:
- It does the job
- It fits in a single file
- It's lightweight
- It has minimal dependencies
- It runs in the shell
- It's better than nothing
