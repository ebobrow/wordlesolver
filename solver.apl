words ← ⊃⎕NGET'wordlewordles'1

⍝ 's?i??' q words
q ← {(,×/⍉↑↑({((⊃⍵)∊'?',⊢)¨2⊃⍵}(1 1⊂⊢))¨↓⍺,⍉↑⍵)/⍵}

⍝ 's?i??' '?k???' batchq words
batchq ← {↑q/(⌽⍺),⊂⍵}
