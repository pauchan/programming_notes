//Given a string, find the length of the longest substring without repeating characters.
//
//Examples:
//
//Given "abcabcbb", the answer is "abc", which the length is 3.
//
//Given "bbbbb", the answer is "b", with the length of 1.
//
//Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count == 0 { return 0 }
        var startIndex = s.startIndex
        var longestSubstring = ""
        var currentSubstring = longestSubstring

        for index in s.indices {
            if let previousPosition = currentSubstring.range(of: String(s[index])) {
                let substringToRemove = currentSubstring[...previousPosition.lowerBound]
                startIndex =  s.index(startIndex, offsetBy: substringToRemove.count)
            }
            currentSubstring = String(s[startIndex...index])
            if currentSubstring.count > longestSubstring.count {
                longestSubstring = currentSubstring
            }
        }
        return longestSubstring.count
    }
}

let s = Solution()
s.lengthOfLongestSubstring("bbbbb")
s.lengthOfLongestSubstring("pwwkew")
s.lengthOfLongestSubstring("abcabcbb")
s.lengthOfLongestSubstring("")
s.lengthOfLongestSubstring("a")
s.lengthOfLongestSubstring("au")

