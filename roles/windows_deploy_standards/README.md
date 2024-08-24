windows-deploy-standards
=========
Applies base things that all Windows computers should have done. 

Currently:
- Installs chocolatey and configures a source repository of a local repository
- Enables the firewall
- Sets firewall to allow ICMP, ensures that all profiles are enabled
- Removes auto-login (This was set during image building with Packer)
- Ensures RDP is configured
- Removes unattend.xml file that may still exist from image building
- Sets hostname based on what Ansible believes the hostname should be
- Sets timezone to EST
- Creates an Ansible working directory via the working_dir variable
- Set the powerplan to disable hibernation and sleep. 

Requirements
------------
This role is designed for a competition environment where a Chocolatey server is already configured. There should be an internal Chocolatey server. I use jborean93.chocolatey.chocolatey.win_chocolatey_server. This internal chocolatey server should be hosting all packages used by Windows machines during the Ansible deployment - you can use https://gitlab.ritsec.cloud/connor/choco-scraper for scraping and downloading all packages (plus dependencies) on the chocolatey server.

Role Variables
--------------
Variables used:
- choco_server
- inventory_hostname_short
- working_dir

Dependencies
------------
None

Example Playbook
----------------
- hosts: windows
  roles:
      - windows-standards
