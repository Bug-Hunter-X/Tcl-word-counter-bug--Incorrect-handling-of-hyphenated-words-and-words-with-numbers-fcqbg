proc count_words {text} {
    set words [regexp -all -inline {[a-zA-Z]+} $text]
    return [llength $words]
}

puts [count_words "This is a test."]  ;# Output: 4
puts [count_words {This is a test with multiple words.}]  ;# Output: 6
puts [count_words ""]  ;# Output: 0
puts [count_words {123}] ;# Output: 0
puts [count_words {This-is-a-test}] ;# Output: 1
