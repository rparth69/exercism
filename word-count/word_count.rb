class Phrase
    def initialize(phrase)
      @phrase = phrase.downcase.scan(/\b[\w']+\b/)    
    end
  
    def word_count
      @phrase.each_with_object(Hash.new(0)) { |key, memo| memo[key] += 1 }
    end
  end