windows-join-domain
=========

Joins a Windows computer to a domain.
- Sets DNS resolution to the DC
- Join the domain
- Restart after joining

Requirements
------------
- {{ dc_ip }} must be running a DNS server that can resolve {{ domain }}

Role Variables
--------------
Variables used:
- team_password
- dc_ip
- domain
- inventory_hostname_short
- netbios

Dependencies
------------
None

Example Playbook
----------------
- hosts: <LIST_OF_DOMAIN_CLIENTS>
  roles:
      - windows-join-domain
