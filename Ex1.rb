#!/usr/bin/env ruby

require 'bio'

# Load GenBank file
record = Bio::GenBank.new(File.open(ARGV[0]).read)

# Iterate through each possible frame
(1..6).each do |frame|
    # Translate mRNA to aminoacids
    aminoacids = Bio::Sequence.auto(record.to_biosequence.translate(frame))
    
    # Add description
    aminoacids.definition = "PROTEIN ID: #{record.entry_id}, FRAME #{frame}"
    
    # Export file
    File.open("#{record.entry_id}$#{frame}.fas", 'w') do |file|
        file.write(aminoacids.output(:fasta));
    end
end
