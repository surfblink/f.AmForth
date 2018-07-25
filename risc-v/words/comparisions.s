# Comparision operators

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible,"0=",ZEROEQUAL 
# ( x -- ? )
# -----------------------------------------------------------------------------
  sltiu x3, x3, 1
  addi x3, x3, -1
  xori x3, x3, -1
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "0<>", NOTZEROEQUAL # ( x -- ? )
# -----------------------------------------------------------------------------
  sltiu x3, x3, 1
  addi x3, x3, -1
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "0<", ZEROLESS # ( n -- ? )
# -----------------------------------------------------------------------------
  srai x3, x3, 31
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "true", TRUE # ( -- -1 )
# -----------------------------------------------------------------------------
  savetos
  li x3, -1
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "false", FALSE # ( x -- 0 )
# -----------------------------------------------------------------------------
  savetos
  li x3, 0
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, ">=", GREATEREQUAL # ( x1 x2 -- ? )
# -----------------------------------------------------------------------------
  lw x5, 0(x4)
  addi x4, x4, 4
  slt x3, x5, x3
  addi x3, x3, -1
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "<=", LESSEQUAL # ( x1 x2 -- ? )          
# -----------------------------------------------------------------------------
  lw x5, 0(x4)
  addi x4, x4, 4
  slt x3, x3, x5
  addi x3, x3, -1
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "<", LESS # ( x1 x2 -- ? )
                      # Checks if x2 is less than x1.
# -----------------------------------------------------------------------------
  lw x5, 0(x4)
  addi x4, x4, 4
  slt x3, x5, x3
  addi x3, x3, -1
  xori x3, x3, -1
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, ">", GREATER # ( x1 x2 -- ? )
                      # Checks if x2 is greater than x1.
# -----------------------------------------------------------------------------
  lw x5, 0(x4)
  addi x4, x4, 4
  slt x3, x3, x5
  addi x3, x3, -1
  xori x3, x3, -1
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "u>=", UGREATEREQUAL # ( u1 u2 -- ? )
# -----------------------------------------------------------------------------
  lw x5, 0(x4)
  addi x4, x4, 4
  sltu x3, x5, x3
  addi x3, x3, -1
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "u<=", ULESSEQUAL # ( u1 u2 -- ? )
# -----------------------------------------------------------------------------
  lw x5, 0(x4)
  addi x4, x4, 4
  sltu x3, x3, x5
  addi x3, x3, -1
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "u<", ULESS # ( u1 u2 -- ? )
# -----------------------------------------------------------------------------
  lw x5, 0(x4)
  addi x4, x4, 4
  sltu x3, x5, x3
  addi x3, x3, -1
  xori x3, x3, -1
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "u>", UGREATER # ( u1 u2 -- ? )
# -----------------------------------------------------------------------------
  lw x5, 0(x4)
  addi x4, x4, 4
  sltu x3, x3, x5
  addi x3, x3, -1
  xori x3, x3, -1
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "<>", NOTEQUAL # ( x1 x2 -- ? )

                       # Compares the top two stack elements for inequality.
# -----------------------------------------------------------------------------
  lw x5, 0(x4)
  addi x4, x4, 4
  xor x3, x3, x5
  sltiu x3, x3, 1
  addi x3, x3, -1
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "=", EQUAL # ( x1 x2 -- ? )
                      # Compares the top two stack elements for equality.
# -----------------------------------------------------------------------------
equal_einsprung:
  lw x5, 0(x4)
  addi x4, x4, 4
  xor x3, x3, x5
  sltiu x3, x3, 1
  addi x3, x3, -1
  xori x3, x3, -1
  NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "min", MIN # ( x1 x2 -- x3 )
                        # x3 is the lesser of x1 and x2.
# -----------------------------------------------------------------------------
  lw x5, 0(x4)
  addi x4, x4, 4
  blt x3, x5, 1f
    mv x3, x5
1:NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "max", MAX # ( x1 x2 -- x3 )
                        # x3 is the greater of x1 and x2.
# -----------------------------------------------------------------------------
  lw x5, 0(x4)
  addi x4, x4, 4
  blt x5, x3, 1f
    mv x3, x5
1:NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "umin", UMIN # ( u1 u2 -- u1|u2 )
# -----------------------------------------------------------------------------
  lw x5, 0(x4)
  addi x4, x4, 4
  bltu x3, x5, 1f
    mv x3, x5
1:NEXT

# -----------------------------------------------------------------------------
  CODEWORD Flag_visible, "umax", UMAX # ( u1 u2 -- u1|u2 )
# -----------------------------------------------------------------------------
  lw x5, 0(x4)
  addi x4, x4, 4
  bltu x5, x3, 1f
    mv x3, x5
1:NEXT
