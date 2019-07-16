require_relative 'wordCounter'

substanceDoc = WordCounter.new("testfile.txt")

substanceDoc.count

substanceDoc.uniq_count

substanceDoc.frequency

substanceDoc.frequencyFile
