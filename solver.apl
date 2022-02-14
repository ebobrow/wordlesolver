words ← ⊃⎕NGET'wordlewordles'1

⍝ 't????' yellow 'rd' grey '??ea?' green words
find ← {,×/⍉↑{((1⌷⍵)∊'?',⊢)¨(1↓⍵)}¨↓⍺,⍉↑⍵}
green ← {(⍺find⍵)/⍵}
yellow ← {(((('?'≠⍺)/⍺)(×⌿∘.∊)⍵)∧(~⍺find⍵))/⍵}
grey ← {(0=(+/⍺∊⍨⊢)¨⍵)/⍵}

⍝ ('tread' (1 0 2 2 0)) query words
query ← {((0=2⊃⍺)/1⊃⍺) grey (1 qize ⍺) yellow (2 qize ⍺) green ⍵}
qize ← {('?'@(⍸⍺≠2⊃⍵))1⊃⍵}

⍝ ('steal' (0 1 2 2 1)) ('tread' (1 0 2 2 0)) batchq words
batchq ← {↑query/⍺,⊂⍵}
