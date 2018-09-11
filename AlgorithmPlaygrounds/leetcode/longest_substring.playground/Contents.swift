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
            // first, we determine if the next character is already a member of a substring
            // if it is, we cutoff the part of the string past the previous occurence -> update startIndex
            if let previousPosition = currentSubstring.range(of: String(s[index])) {
                let substringToRemove = currentSubstring[...previousPosition.lowerBound]
                startIndex =  s.index(startIndex, offsetBy: substringToRemove.count)
            }
            // update the current substring with the new startIndex (if needed) and check if it's the longest one so far
            // note: I started by calling `currentSubstring = String(s[startIndex...index])` first but then
            // it's really hard to have the last character in the string included in the solution
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

