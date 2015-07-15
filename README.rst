================
rhel-formula
================

A salt formula that provides functionality specific to RHEL. 

.. note::

	Unlike most Salt formulas, this formula offers no sensible defaults - and MUST be pre-configured in pillar first.
	See pillar.example

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Example usage (in top.sls):
===========================

::

    - rhel.sm_register
    - rhel.sm_attach
    - rhel.sm_repos_enable
	
Available states
================

.. contents::
    :local:

``rhel.java_180_oracle``
------------

Install Oracle flavor of Java 1.8.0 from RHEL subscriber library. Note that this library is usually way behind 
the latest. An alternative is the sun-java-rpm formula - which will install directly from Oracle servers. 
	
``rhel.sm_register``
------------

Register's a RHEL Subscription Manager username/password and creates /etc/pki/consumer/cert.pem

``rhel.sm_attach``
------------

Attaches to RHEL Subscription Manager pool/pools

``rhel.sm_repos_enable``
------------

Enables RHEL Subscription Manager repository/repositories
