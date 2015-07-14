{% from "rhel/map.jinja" import rhel_settings with context %}

{%- for pool in rhel_settings.sm.pools.attach %}
subscription_manager_attach_pool_{{pool}}:
  cmd.run:
    - name: subscription-manager attach --pool={{pool}}
    - unless: subscription-manager list --pool-only --consumed|grep {{pool}}
    - user: root
{%- endfor %}
