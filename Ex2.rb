#!/usr/bin/env ruby

require 'bio'

# Create blast connection object
blast = Bio::Blast.remote('blastp', 'nr-aa', '-e 10 -m 7', 'genomenet')

# Iterate through each possible frame
(1..6).each do |frame|
    puts "Processing frame #{frame}"

    # Read the aminoacids sequence FASTA files
    records = Bio::FlatFile.open(Bio::FastaFormat, "#{ARGV[0]}\$#{frame}.fas")
    
    File.open("#{ARGV[0]}\$#{frame}.blas", 'w') do |f|
        records.each_entry do |entry|

            # Make the query to the BLAST tool
            report = blast.query(entry.seq)

            # Write XML output to file
            f.puts blast.output
        end
      end
end
