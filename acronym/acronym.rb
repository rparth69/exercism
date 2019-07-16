module AllCaps refine String do
  def all_caps?
    upcase == self
  end

  def internal_caps
    return '' if all_caps?
    self[1..-1].each_char.select(&:all_caps?).join
  end
end end

module Acronym
  using AllCaps

  module_function

  def abbreviate(str)
    str.split(/\W+/).map { |word| word[0] + word.internal_caps }.join.upcase
  end
end
