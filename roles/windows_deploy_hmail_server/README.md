windows-deploy-hmail_server
=========
Installs hMail via Chocolatey.

Currently:
- Installs .NET 3.5
- Opens port 25 (SMTP)
- Installs and configures hMail

Requirements
------------
None

Role Variables
--------------
Variables used:
- team_password
- choco_server_source
- domain
- domain_users
- team_number
- working_dir

Dependencies
------------
windows-deploy-standards

Example Playbook
----------------
- hosts: windows
  roles:
      - windows-deploy-standards
      - windows-deploy-hmail_server
