#!/usr/bin/env ruby


print ARGF.read.match(/<#(.+)#/)[1]
