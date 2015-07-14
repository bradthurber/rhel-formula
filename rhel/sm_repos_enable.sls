{% from "rhel/map.jinja" import rhel_settings with context %}

{%- for repoid in rhel_settings.sm.repos.enable %}
subscription_manager_repos_enable_{{repoid}}:
  cmd.run:
    - name: subscription-manager repos --enable {{repoid}}
    - unless: subscription-manager repos --list-enabled|grep {{repoid}}
    - user: root
{%- endfor %}
