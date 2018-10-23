// Reverse words
// "Programming Interviews Exposed, Arrays and Strings"

import Foundation

func reverseWords(_ input: String) -> String {
  var buffer = ""
  var stack: [String] = []
  input.forEach {
    if $0 == " " {
      stack.insert(buffer, at: 0)
      buffer = ""
    } else {
      buffer.append($0)
    }
  }
  stack.insert(buffer, at: 0)
  return stack.reduce("", { (acc, el) in
    acc + el + " "
  })
}


print(reverseWords("Do or do not, there is no try."))
