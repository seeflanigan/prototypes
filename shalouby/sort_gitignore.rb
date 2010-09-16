#!/usr/bin/env ruby
## Should transform a .gitignore file like this:
##
#
# tmp
# *.sql.bz2
# coverage/*
# *flymake*
# public/system/*
#
##
## Into this:
##
#
# *.sql.bz2
# *flymake*
# coverage/*
# public/system/*
# tmp
#

require 'ftools'
require 'tempfile'

lines    = File.read(".gitignore")
entries  = lines.split("\n")
tempfile = Tempfile.new(".gitignore.swp")

tempfile.write entries.sort.join("\n")
tempfile.write "\n#EOF\n"
tempfile.rewind
File.copy(tempfile.path, ".gitignore")

