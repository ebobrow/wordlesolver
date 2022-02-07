words ← ⊃⎕NGET'wordlewordles'1

⍝ 's?i??' q words
q ← {(,×/⍉↑{((1⌷⍵)∊'?',⊢)¨(1↓⍵)}¨↓⍺,⍉↑⍵)/⍵}

⍝ 's?i??' '?k???' batchq words
batchq ← {↑q/(⌽⍺),⊂⍵}

⍝ 't????' yellow 'rd' grey '??ea?' green words
find ← {,×/⍉↑{((1⌷⍵)∊'?',⊢)¨(1↓⍵)}¨↓⍺,⍉↑⍵}
green ← {(⍺find⍵)/⍵}
yellow ← {(((('?'≠⍺)/⍺)(×⌿∘.∊)⍵)∧(~⍺find⍵))/⍵}
grey ← {(~(⍺(×⌿∘.∊)⍵))/⍵}
