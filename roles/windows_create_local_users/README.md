windows-create-local_users
=========
Add local admins and users to a system.

Currently:
- Configure local users

Requirements
------------
None

Role Variables
--------------
Variables used:
- team_password
- local_admins
- local_users

Dependencies
------------
None

Example Playbook
----------------
- hosts: windows:!<DOMAIN_CONTROLLER>
  roles:
      - windows-create-local_users
