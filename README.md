# raspberry Home Lab

This is my ansible setup to push my Hashi stack configuration to my home lab. Build on raspberry pi 3 and 4
Feel free to comment on anything

My ansible host/controller is my Mac mini (M1)
You will need a Tailscale subscription

Big thanks to:

Johan Siebens  
https://github.com/jsiebens/hashi-up/  
https://johansiebens.dev/  

Made my life easier with hashicorp product deployment  

More to come..


Order to run my scripts

Make sure to adjust tne inventory.yaml file.  
Upgrade the os on all nodes.  
ansible-playbook rasp_upgrade-os.yaml  

Here you will need to work with ansible-vault to hide key that tailscale can provide when you install it on each RPi  
ansible-playbook rasp_tailscale.yaml --ask-vault-pass 
ansible-playbook rasp_docker.yaml  
ansible-playbook rasp_hashi_server.yaml  
ansible-playbook rasp_hashi_agents.yaml  
