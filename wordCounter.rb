class WordCounter
  def initialize(file_name)
    @file = File.read(file_name)
  end

  #my code goes here...
  def count
    puts @file.split.length
  end

  def uniq_count
    puts @file.split.uniq.length
  end

  def frequency
    @file.split.uniq.each do
      |w| puts "#{w}: #{@file.split.count(w)}"
    end
  end

  def frequencyFile
    wordHash = {}
    @file.split.uniq.each do
      |wo| wordHash.merge!(Hash[wo=>@file.split.count(wo)])
    end

    wordHash = Hash[wordHash.sort_by{|k,v| v}.reverse]

    File.write('freqOutput.txt', wordHash.to_s)
  end
end
