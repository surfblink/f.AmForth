# -----------------------------------------------------------------------------
  CODEWORD Flag_foldable_1|Flag_inline, "negate", NEGATE # ( n1 -- -n1 )
# -----------------------------------------------------------------------------
  xor x3, x3, -1
  addi x3, x3, 1
  NEXT
