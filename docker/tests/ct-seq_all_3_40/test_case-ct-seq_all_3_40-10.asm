.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL CX 
AND CX, -16 
SETNO SIL 
MUL BL 
ADD RDI, 113 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 9 
AND DIL, 84 
MOV RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], SI 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP RBX, RSI 
CMOVNL ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], AL 
BSWAP RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RCX 
AND RAX, -1115200896 
XCHG RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RSI] 
SETNP CL 
LEA RDX, qword ptr [RDX] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 97 # instrumentation
CMOVNP CX, SI 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
SUB ESI, 14 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
OR RAX, 122 
LEA EDI, qword ptr [RBX + RAX] 
CWD  
CMP EDX, -93 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], 106 
ADC RAX, 17 
CMOVL AX, DX 
CMOVB EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -17 
CMP AX, SI 
OR DIL, DL 
NOT RCX 
SETS AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], BX 
AND RBX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
