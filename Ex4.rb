#!/usr/bin/env ruby
require 'bio'

input = ARGV[0]
output = ARGV[1]
pattern = ARGV[2].upcase
type = ARGV[3]

Bio::NCBI.default_email = "@"

File.open(output, 'w') do |f|
  f.puts "Pattern: #{pattern}"
  Bio::Blast.reports(File.new(input)) do |report|
    report.each do |hit|
      if hit.definition.upcase.index(pattern)
        f.puts '------------------------------------------------'
        f.puts "Definition: #{hit.definition}"
        f.puts "Accession: #{hit.accession}"
        f.write "Fasta sequence: "
        if type.eql?('--protein')
          f.puts Bio::NCBI::REST::EFetch.protein(hit.accession, "fasta")
        elsif type.eql?('--nucleotid')
          f.puts Bio::NCBI::REST::EFetch.nucleotide(hit.accession, "fasta")
        end
      end
    end
  end
end