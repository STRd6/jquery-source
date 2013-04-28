#!/usr/bin/env rake
require "bundler/gem_tasks"

def download(version)
  source_url = "https://ajax.googleapis.com/ajax/libs/jquery/#{version}/jquery.js"

  `wget -O source/jquery.js #{source_url}`
end

def micro
  ".1"
end

def write_version_file(version)
  version_file_text =
  <<-eos.gsub(/^ {4}/, '')
    module Jquery
      module Source
        VERSION = "#{version}#{micro}"
      end
    end
  eos

  File.open('lib/jquery-source/version.rb', 'w') do |file|
    file.puts version_file_text
  end
end

def make_version(version)

  download(version)
  write_version_file(version)
  sh "git ci -am 'jQuery #{version}#{micro}'"

  sh "rake release"
end

def versions
  "1.2.6, 1.3.0, 1.3.1, 1.3.2, 1.4.0, 1.4.1, 1.4.2, 1.4.3, 1.4.4, 1.5.0, 1.5.1, 1.5.2, 1.6.0, 1.6.1, 1.6.2, 1.6.3, 1.6.4, 1.7.0, 1.7.1".split(", ") +
  "2.0.0, 1.9.1, 1.9.0, 1.8.3, 1.8.2, 1.8.1, 1.8.0, 1.7.2".split(", ").reverse()
end

task :make_all_versions do
  versions.each do |version|
    make_version(version)
  end
end

task :make_version do
  make_version("1.6.1")
end
