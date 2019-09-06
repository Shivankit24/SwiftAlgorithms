import UIKit

//  Simple yet powerful algorithms for Palinfrome, Pangram and Anagram in Swift 5



/// Check for palindrome string
///
/// - Parameter word: input string to check
/// - Returns: true if palindrome, false otherwise
func isPalindrome(word: String) -> Bool {
    var currentIndex = 0
    var characters = Array(word.lowercased())

    while currentIndex < characters.count / 2 {
        if characters[currentIndex] != characters[characters.count - currentIndex - 1] {
            return false
        }
        currentIndex += 1
    }
    return true
}

//  Positive palindrome test
isPalindrome(word: "Civic")

//  Negative palindrome test
isPalindrome(word: "Developer")






/// Check for Pangram string
///
/// - Parameter string: input string to check
/// - Returns: true if pangram, otherwise false
func isPangram(_ string: String) -> Bool {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var isPangram = true
    alphabet.forEach ({ if !string.lowercased().contains($0) { isPangram = false } })
    return isPangram
}

//  Positive pangram test
isPangram("A quick brown fox jumps over the lazy dog")

//  Negative pangram test
isPangram("Welcome to the world of Playgrounds")






/// Compare two strings for anagram
///
/// - Parameters:
///   - firstString: <#firstString description#>
///   - secondString: <#secondString description#>
/// - Returns: true if anagrams, false otherwise
func areTheseAnagrams(firstString: String, secondString: String) -> Bool {
    if firstString.lowercased().sorted() == secondString.lowercased().sorted() {
        return true
    }
    return false
}

//  Positive anagram test
areTheseAnagrams(firstString: "Silent", secondString: "Listen")

//  Negative anagram test
areTheseAnagrams(firstString: "Swift", secondString: "Switch")
