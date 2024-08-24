windows-deploy-dns_server
=========
Configures forwarders, records, and zones.

Requirements
------------
None

Role Variables
--------------
Variables used:
- dns_forwarders
- domain
- ids
- host_records : {name: "Raijin", number: "22", zone: "{{ team_number }}.16.172.in-addr.arpa", address: "172.16.{{ team_number }}.22"}
- working_dir

Dependencies
------------
None

Example Playbook
----------------
- hosts: <DC_NAME>
  roles:
      - domain-controller
      - windows-dns-server
