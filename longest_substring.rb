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

def sliding_longest_substring(s)
    error_handling(s)
    n = s.length
    set = []
    ans = 0
    i = 0
    j = 0
    while i < n && j < n
        if !set.include?(s[j])            
            set.push(s[j])
            j += 1
            b = j-i
            ans = ans > b ? ans : b
        elsif
            set.delete(s[i])
            i += 1
        end
    end
    ans
end

def error_handling(s)
    raise(ArgumentError, 'argument must be a string') unless s.class == String
    raise(ArgumentError, 'string must contain at least one character') unless s.length > 0
end


