=begin
Copyright 2016 Aaron Baker abaker@sharethrough.com

See the file LICENSE for copying permission.
=end

require 'minitest_helper'
require 'plugins/pre_commit/checks/jasmine_focus'

describe PreCommit::Checks::Jasmine_focus do
  let(:check){ PreCommit::Checks::Jasmine_focus.new(nil, nil, []) }

  it "does nothing" do
    check.send(:run_check, "rake").must_equal(nil)
  end

  it "checks files" do
    Dir.chdir(test_files) do
      # TODO: create example files in test/files
      check.send(:run_check, ".keep").must_equal(nil)
    end
  end

end
