
def sort_by_appearance(characters_to_sort, long_text)

  hash_map = {}
  characters_to_sort.chars.each do |char|
    hash_map[char] = 0
  end
  chars = hash_map.keys
  long_text.chars.each do |text_char|
    if chars.include?(text_char)
      hash_map[text_char] += 1
    end
  end
  hash_map.sort_by {|k, v| v }.reverse.to_h.keys.join('')
end
