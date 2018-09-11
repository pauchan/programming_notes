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

        var startIndex = s.startIndex
        var longestSubstring = ""
        var currentSubstring = ""
        
        for index in s.indices {
            let currentSubstringIndex = s.index(startIndex, offsetBy: currentSubstring.count)
            currentSubstring = String(s[startIndex...currentSubstringIndex])
            if let previousPosition = currentSubstring.range(of: String(s[index])) {
                // check for lengths, if its higher then the highest, use this one
                if currentSubstring.count > longestSubstring.count {
                    longestSubstring = currentSubstring
                }
                let substringToRemove = currentSubstring[...previousPosition.lowerBound]
                startIndex =  s.index(startIndex, offsetBy: substringToRemove.count)
            }
        }
        return longestSubstring.count
    }
}

let s = Solution()
s.lengthOfLongestSubstring("bbbbb")
