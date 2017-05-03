def sort_by_appearance(characters_to_sort, long_text)
  searched_chars = characters_to_sort.split("")
  long_text_to_search = long_text.split("")
  char_count = {}
  searched_chars.each do |char|
    char_count[char] = 0
  end
  long_text_to_search.each do |char|
    if char_count[char]
      char_count[char] += 1
    end
  end
  char_count.sort_by{ |_k, v| v }.map {|tuple| tuple[0]}.join().reverse
end
