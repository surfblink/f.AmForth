; ( n -- ) System
; R( -- )
; allocate memory in RAM
VE_ALLOT:
    .db $05, "allot"
    .dw VE_HEAD
    .set VE_HEAD = VE_ALLOT
XT_ALLOT:
    .dw DO_COLON
PFA_ALLOT:
    .dw XT_HEAP
    .dw XT_PLUS
    .dw XT_DOTO
    .dw PFA_HEAP
    .dw XT_EXIT
