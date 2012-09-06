require 'shellwords'
require 'optparse'
require 'yaml'

module MailMonitor

  ######################################################################
  # MailMonitor main application object.  When invoking +mail_monitor+ from the
  # command line, a MailMonitor::Application object is created and run.
  #
  class Application
    
    # @return [Int] the frequency in seconds the polling_address will be polled
    attr_accessor :frequency

    # @return [Mail::Retriver] the address to be polled from
    attr_accessor :retriver

    # @return [Mail::Message] the addresses to be notified when fault is identified.
    attr_accessor :notifier


    def run
      ARGV[0]
      Monitor
    end
    

    # gets the arguments input
    def argv
      check_argv
      config = YAML.load_file( ARGV[0]) #TODO Some kind of catch/rescue
      mail = Mail
      @notifier = Notifier.new notify_addresses
      retriver.defaults = 
    end

    private
      def check_argv 
      end




  end