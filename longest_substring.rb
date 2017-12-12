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

def l_s(s)
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

p l_s('adbcghjiabbddabcdefghityop')