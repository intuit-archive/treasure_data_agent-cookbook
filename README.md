# treasure_data_agent-cookbook cookbook

Treasure Data Agent

The event collector daemon, for Treasure Data. This daemon collects various types of logs/events via various way, and transfer them to the cloud. For more about Treasure Data, see the [homepage](http://treasure-data.com/), and the [documentation](http://docs.treasure-data.com/).


# Requirements

Treasure Data Agent package must be on a repo available to the system

# Usage

# Attributes
## Default
* node['td_agent']['conf_dir']    - Configuration directory, default is  '/etc/td-agent'
* node['td_agent']['group']       - User group, default is 'td-agent'
* node['td_agent']['log_dir']     - Log directory, default is '/var/log/td-agent'
* node['td_agent']['plugin_dir']  - Install directory, default is '/etc/td-agent/plugin'
* node['td_agent']['user']        - User to run as, default is 'td-agent'
* node['td_agent']['version']     - Version to install, default is '1.1.9-0

# Recipes
## Default
* Installs treasure_data_agent (td_agent)
* Starts and enables the service

# Author

Author:: Intuit, Inc. (<kevin_young@intuit.com>)
