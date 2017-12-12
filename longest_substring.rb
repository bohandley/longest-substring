def longest_substring(s)
    return 0 if s == ''
    arr = []
    array = s.split('')
    array.each_with_index do |l, index|
        index.upto(array.length - 1) do |n| 
            substring = array[index..n]
            ordered_substring = substring.sort
            arr.push(substring) if ordered_substring.all? { |ss| ss != ordered_substring[ordered_substring.index(ss)+1] }
        end
    end
    arr.sort_by { |el| el.length}[-1].length
end