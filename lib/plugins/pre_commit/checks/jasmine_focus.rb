=begin
Copyright 2016 Aaron Baker abaker@sharethrough.com

See the file LICENSE for copying permission.
=end

require 'pre-commit/checks/grep'

module PreCommit
  module Checks
    class JasmineFocus < Grep
      def files_filter(staged_files)
        staged_files.grep(/spec\.js\.coffee$/)
      end

      def message
        "jasmine focus found:"
      end

      def pattern
        "(ddescribe|iit|fdescribe|fit).*(\'|\").*(\'|\"),"
      end

      def self.description
        "Checks if you accidentally checked in ddescribe or iit"
      end
    end
  end
end
