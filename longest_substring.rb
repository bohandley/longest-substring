def brute_longest_substring(s)
    error_handling(s)
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

def sliding_longest_substring(string)
    error_handling(string)
    length = string.length
    set = []
    answer = 0
    left_edge = 0
    right_edge = 0
    while left_edge < length && right_edge < length
        if !set.include?(string[right_edge])            
            set.push(string[right_edge])
            right_edge += 1
            width_of_window = right_edge-left_edge
            answer = answer > width_of_window ? answer : width_of_window
        elsif
            set.delete(string[left_edge])
            left_edge += 1
        end
    end
    answer
end

def error_handling(string)
    raise(ArgumentError, 'argument must be a string') unless string.class == String
    raise(ArgumentError, 'string must contain at least one character') unless string.length > 0
end


