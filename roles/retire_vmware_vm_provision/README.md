# Role: vmware_vm_provision

This role provisions a virtual machine on VMware.

## Prerequisites
- infoblox-client

The infoblox-client is required on the Ansible machine to use both plugins and modules (nios_*), see
https://docs.ansible.com/ansible/latest/plugins/lookup/nios_next_ip.html and
https://docs.ansible.com/ansible/latest/modules/nios_network_module.html#nios-network-module.

## Flow

1. Acquire free IP address from Infoblox DDI appliance
2. Provision virtual machine on VMware

## Examples
```yaml
/* Use lookup plugin to acquire next available IP address */
---
- name: Acquire next available IP address from Infoblox DDI appliance
  hosts: localhost
  connection: local
  vars:
    nios_provider:
      host: infoblox_server_ip_or_hostname
      username: test
      password: test
  tasks:
  - name: get next available ip
    set_fact:
      ipaddr: "{{ lookup('nios_next_ip', '192.168.10.0/24', provider=nios_provider) }}"

```
