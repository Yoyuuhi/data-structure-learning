# https://leetcode.com/explore/learn/card/queue-stack/230/usage-stack/1361/

# @param {String} s
# @return {Boolean}
def is_valid(s)
  array = []
  s.each_char do |i|
      if ["(", "[", "{"].include?(i)
          array.push(i)
      else
          pop = array.pop
          case i
              when ")"
              return false if pop != "("
              when "]"
              return false if pop != "["
              when "}"
              return false if pop != "{"
          end
      end
  end
  return false if ["(", "[", "{"].include?(array[-1])
  return true
end