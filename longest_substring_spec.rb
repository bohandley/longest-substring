require_relative 'longest_substring'
  s  = 'a'
  s1 = 'abcabbcdef'
  s2 = ''
  s3 = []

describe 'brute_longest_substring' do 
  
  describe 'output' do
    it 'returns an integer' do
      expect(brute_longest_substring(s1)).to be_a Integer
    end

    it 'returns 1 if the string is 1 char long' do 
      expect(brute_longest_substring(s)).to eq 1
    end

    it 'returns the longest unique substring' do
      expect(brute_longest_substring(s1)).to eq 5
    end
  end

end

describe 'sliding_longest_string' do
  
  describe 'output' do
    it 'returns an integer' do
      expect(sliding_longest_substring(s1)).to be_a Integer
    end

    it 'returns 1 if the string is 1 char long' do 
      expect(sliding_longest_substring(s)).to eq 1
    end

    it 'returns the longest unique substring' do
      expect(sliding_longest_substring(s1)).to eq 5
    end
  end
end

describe 'error_handling' do

  describe 'ArgumentError' do
    it 'throws an error if s is an empty string' do
      expect{ error_handling(s2) }.to raise_error(ArgumentError, 'string must contain at least one character')
    end

    it 'throws an error unless s is a string' do
      expect{ error_handling(s3) }.to raise_error(ArgumentError, 'argument must be a string') 
    end
  end

end