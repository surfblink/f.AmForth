; : d.r       ( d n -- )
;             >r swap over dabs <# #s rot sign #> r> over - spaces type ;


VE_DDOTR:
    .db $03, "d.r"
    .dw VE_HEAD
    .set VE_HEAD = VE_DDOTR
XT_DDOTR:
    .dw DO_COLON
PFA_DDOTR:
    .dw XT_TO_R
    .dw XT_SWAP
    .dw XT_OVER
    .dw XT_DABS
    .dw XT_L_SHARP
    .dw XT_SHARP_S
    .dw XT_ROT
    .dw XT_SIGN
    .dw XT_SHARP_G
    .dw XT_R_FROM
    .dw XT_OVER
    .dw XT_MINUS
    .dw XT_SPACES
    .dw XT_TYPE
    .dw XT_EXIT
