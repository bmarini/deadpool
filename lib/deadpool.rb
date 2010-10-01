
require 'rubygems'
require 'eventmachine'
require 'logger'
require 'yaml'

$:.unshift File.dirname(__FILE__)


module Deadpool

  autoload :Admin,            'deadpool/admin'
  autoload :AdminServer,      'deadpool/admin_server'
  autoload :Daemonizer,       'deadpool/daemonizer'
  autoload :Handler,          'deadpool/handler'
  autoload :Helper,           'deadpool/helper'
  autoload :Options,          'deadpool/options'
  autoload :State,            'deadpool/state'
  autoload :StateSnapshot,    'deadpool/state_snapshot'
  autoload :Server,           'deadpool/server'


  module FailoverProtocol
    autoload :Base, 'deadpool/failover_protocol'
  end

  module Monitor
    autoload :Mysql, 'deadpool/monitor/mysql'
  end

  module FailoverProtocol
    autoload :EtcHosts,          'deadpool/failover_protocol/etc_hosts'
    autoload :ExecRemoteCommand, 'deadpool/failover_protocol/exec_remote_command'
  end

  class DeadpoolError < StandardError; end
end
