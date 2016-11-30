=begin
Copyright 2016 Aaron Baker abaker@sharethrough.com

See the file LICENSE for copying permission.
=end

require 'minitest_helper'
require 'plugins/pre_commit/checks/jasmine_focus'

describe PreCommit::Checks::JasmineFocus do
  let(:check){ PreCommit::Checks::JasmineFocus.new(nil, nil, []) }

  it "succeeds if nothing changed" do
    check.call([]).must_equal nil
  end

  it "succeeds if only good changes" do
    check.call([fixture_file('good.spec.js.coffee')]).must_equal nil
  end

  it "fails if file contains pry" do
    check.call([fixture_file('bad.spec.js.coffee')]).to_a.must_equal([
      "jasmine focus found:",
      "test/files/bad.spec.js.coffee:1:ddescribe 'it describes this', ->",
      "test/files/bad.spec.js.coffee:2:  iit 'it describes this', ->",
      "test/files/bad.spec.js.coffee:4:fdescribe 'it describes this', ->",
      "test/files/bad.spec.js.coffee:5:  fit 'it describes this', ->"
    ])
  end
end
