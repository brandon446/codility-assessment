def merge_strings(str1, str2)
  overlap = ""
  (1..str1.length).each do |i|
    if str2.start_with?(str1[-i..-1])
      overlap = str1[-i..-1]
    end
  end
  str1 + str2.sub(overlap, "")
end

puts merge_strings("abc", "def")  