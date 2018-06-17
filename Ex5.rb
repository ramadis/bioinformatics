#!/usr/bin/env ruby

require 'bio'
type = ARGV[0]

if type.eql? '--orf'
    Bio::EMBOSS.run('getorf', ARGV[1], ARGV[2])
end

if type.eql? '--prosite'
    Bio::EMBOSS.run('prosextract', 'prosite')
    Bio::EMBOSS.run('patmatmotifs', ARGV[1], ARGV[2])
end