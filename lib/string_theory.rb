def sort_by_appearance(characters_to_sort, long_text)
  characters_array = characters_to_sort.split('')
  text_array = long_text.split('')
  totals = {}

  characters_array.each do |c|
    totals[c] = 0
    text_array.each do |t|
      if c == t
        totals[c] += 1
      end
    end
  end

  characters_array.sort_by! do |char|
    -totals[char]
  end

  characters_array.join
end
