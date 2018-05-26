#!/usr/bin/env ruby

require 'bio'

# Create blast connection object
blast = Bio::Blast.remote('blastp', 'swissprot', '-e 0.0001', 'genomenet')

# Iterate through each possible frame
(1..6).each do |frame|
    puts "Processing frame #{frame}"

    # Read the aminoacids sequence FASTA files
    records = Bio::FlatFile.open(Bio::FastaFormat, "#{ARGV[0]}\$#{frame}.fas")
    
    File.open("#{ARGV[0]}\$#{frame}.blas", 'w') do |f|
        records.each_entry do |entry|

            # Make the query to the BLAST tool
            report = blast.query(entry.seq)
          
            # Iterate through the results and create a blas file with the results
            report.each do |hit|
                f.puts "\n"
                f.puts hit.accession
                f.puts hit.definition
                f.puts "\tQuery length: #{hit.len}"
                f.puts "\tNumber of identities: #{hit.identity}"
                f.puts "\tLength of Overlapping region: #{hit.overlap}"
                f.puts "\tQuery sequence: #{hit.query_seq}"
                f.puts "\tSubject sequence: #{hit.target_seq}"
                hit.hsps.each_with_index do |hsps, hsps_index|
                    f.puts "\t\tBit score: #{hsps.bit_score}"
                    f.puts "\t\tGaps: #{hsps.gaps}"
              end
          end
        end
      end
end
