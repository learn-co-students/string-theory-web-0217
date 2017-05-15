require 'pry'
def sort_by_appearance(characters_to_sort, long_text)

  characters_to_sort.chars.sort_by do |char|
    long_text.scan(char).count
  end.join.reverse
end
