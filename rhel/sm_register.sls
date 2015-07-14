{% from "rhel/map.jinja" import rhel_settings with context %}

subscription_manager_register_user:
  cmd.run:
    - name: subscription-manager register --username '{{ rhel_settings.sm.register_username }}' --password '{{ rhel_settings.sm.register_password }}'
    - user: root
    - creates: '/etc/pki/consumer/cert.pem'
