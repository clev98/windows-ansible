wndows-deploy-dc
=========
Applies all configuration that any Domain Controller should have applied. 

Currently:
- Installs ADDS, DNS to a Windows Server
- Promotes this server to a Domain Controller
- Adds Domain Users

Requirements
------------
None

Role Variables
--------------
Variables used:
- team_password
- domain
- domain_admins
- domain_users
- netbios
- team_number

Dependencies
------------
None

Example Playbook
----------------
- hosts: <DC_NAME>
  roles:
      - windows-deploy-dc
