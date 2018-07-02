#!/usr/bin/env ruby
require 'bio'

input = ARGV[0]
output = ARGV[1]
pattern = ARGV[2].upcase
type = ARGV[3]

# Set default email for NCBI to enable REST API use
Bio::NCBI.default_email = "rolivera@itba.edu.ar"

File.open(output, 'w') do |f|
  f.puts "Pattern: #{pattern}"
  Bio::Blast.reports(File.new (input)) do |report|
   
    # Iterate through each report
    report.each do |hit|

      # If there is a match with the pattern
      if hit.definition.upcase.index pattern
        f.puts '-------------------------------------------'
        f.puts "Accession: #{hit.accession}"
        f.puts "Fasta sequence: "

        # Get the FASTA from the accession
        if type.eql? '--nucleotid'
          f.puts Bio::NCBI::REST::EFetch.nucleotide(hit.accession, "fasta")
        else
          f.puts Bio::NCBI::REST::EFetch.protein(hit.accession, "fasta")
        end
      end
    end
  end
end