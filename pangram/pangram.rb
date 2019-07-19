class Pangram
  def self.pangram?(sentence)
    sentence.downcase.chars.uniq.reject { |c| c.match?(/\W|_|\d/) }.length == 26
  end
end