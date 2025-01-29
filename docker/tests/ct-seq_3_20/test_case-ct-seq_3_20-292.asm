.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], 1 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
MOVSX ESI, SIL 
CMOVB CX, SI 
AND RAX, 0b1111111111111 # instrumentation
SUB AX, 17642 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], 21122 
CMOVLE RDI, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], ECX 
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], DX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], ECX 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
