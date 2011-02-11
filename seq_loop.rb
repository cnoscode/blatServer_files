require 'bio'
ff = Bio::FlatFile.open('ERR000001.fastq')
ff_out = File.new('ee_query.fastq', 'w')
i = 0
ff.each do |entry|         
    i += 1
    #break if i > 20
    seq = entry.naseq.to_s
    ff_out.puts seq
end