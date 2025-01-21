proc count_words {text} {
    set words [regexp -all -inline {\b[a-zA-Z0-9]+(?:-[a-zA-Z0-9]+)*\b} $text]
    return [llength $words]
}

puts [count_words "This is a test."]  ;# Output: 4
puts [count_words {This is a test with multiple words.}]  ;# Output: 6
puts [count_words ""]  ;# Output: 0
puts [count_words {123}] ;# Output: 1
puts [count_words {This-is-a-test}] ;# Output: 1
puts [count_words {This-is-a-test-with-numbers-123}] ;# Output: 1
puts [count_words {This is a test with hyphenated-words}] ;# Output: 7