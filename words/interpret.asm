; (  -- )
; R: (ix - jx )
VE_INTERPRET:
    .db $09, "interpret"
    .dw VE_HEAD
    .set VE_HEAD = VE_INTERPRET
XT_INTERPRET:
    .dw DO_COLON
PFA_INTERPRET:
PFA_INTERPRET1:
    .dw XT_BL
    .dw XT_WORD

    .dw XT_DUP
    .dw XT_CFETCH
    .dw XT_GREATERZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET4

    .dw XT_FIND
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET2

    .dw XT_EXECUTE
    .dw XT_DOBRANCH
    .dw PFA_INTERPRET3

PFA_INTERPRET2:
    .dw XT_NUMBER

PFA_INTERPRET3:
    .dw XT_DOBRANCH
    .dw PFA_INTERPRET1

PFA_INTERPRET4:
    .dw XT_DROP
    .dw XT_EXIT
