#!/usr/bin/env ruby

require 'bio'

blast = Bio::Blast.remote('blastp', 'swissprot', '-e 0.0001', 'genomenet')

(1..6).each do |frame|
    puts "Processing frame #{frame}"
    entries = Bio::FlatFile.open(Bio::FastaFormat, "#{ARGV[0]}\$#{frame}.fas")
    
    File.open("#{ARGV[0]}\$#{frame}.blas", 'w') do |f|
        entries.each_entry do |entry|
          report = blast.query(entry.seq)
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
