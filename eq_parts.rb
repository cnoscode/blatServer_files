require 'bio'

fq = Bio::FlatFile.open('ERR000001.fastq')
fqeq1 = File.new('fq1_out.fastq', 'w')
fqeq2 = File.new('fq2_out.fastq', 'w')
fqeq3 = File.new('fq3_out.fastq', 'w')
fqeq4 = File.new('fq4_out.fastq', 'w')

fq_ctr1 = 0
fq.each do |entry1|
    fq_ctr1 += 1
        break if fq_ctr1 > 10000
        seq1 = entry1.naseq.to_s
        fqeq1.puts "#{seq1}"
    end
fqeq1.close

fq_ctr2 = 0
fq.each do |entry2|
    fq_ctr2 += 1
        break if fq_ctr2 > 10000
        seq2 = entry2.naseq.to_s
        fqeq2.puts "#{seq2}"
    end
fqeq2.close

fq_ctr3 = 0
fq.each do |entry3|
    fq_ctr3 += 1
        break if fq_ctr3 > 10000
        seq3 = entry3.naseq.to_s
        fqeq3.puts "#{seq3}"
    end
fqeq3.close

fq_ctr4 = 0
fq.each do |entry4|
    fq_ctr4 += 1
        break if fq_ctr4 > 10000
        seq4 = entry4.naseq.to_s
        fqeq4.puts "#{seq4}"
    end
fqeq4.close