words ← ⊃⎕NGET'wordlewordles'1

⍝ 't????' yellow 'rd' grey '??ea?' green words
find ← {,×/⍉↑{((1⌷⍵)∊'?',⊢)¨(1↓⍵)}¨↓⍺,⍉↑⍵}
green ← {(⍺find⍵)/⍵}
yellow ← {(((('?'≠⍺)/⍺)(×⌿∘.∊)⍵)∧(~⍺find⍵))/⍵}
grey ← {(~(⍺(×⌿∘.∊)⍵))/⍵}

⍝ ('tread' (1 0 2 2 0)) query words
query ← {
   ⍝  a←10⊥⍣¯1⊢(2⊃⍺)
    greyq←(0=2⊃⍺)/1⊃⍺
    yellows←1=2⊃⍺
    greens←2=2⊃⍺
    yellowq←(yellows/1⊃⍺)@{yellows}'?????'
    greenq←(greens/1⊃⍺)@{greens}'?????'
    greyq grey yellowq yellow greenq green ⍵
}

⍝ ('steal' (0 1 2 2 1)) ('tread' (1 0 2 2 0)) batchq words
batchq ← {↑query/⍺,⊂⍵}
