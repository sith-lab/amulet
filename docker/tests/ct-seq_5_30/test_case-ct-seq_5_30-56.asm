.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
MOVSX SI, BL 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RDI] 
MOV EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RCX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 87 # instrumentation
CMOVNS CX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RSI] 
CLC  
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RBX 
ADC AX, -74 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
NEG DL 
CMOVBE RDI, RAX 
ADC AL, -9 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -59 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RSI 
CMP DIL, DL 
DEC SI 
SBB AL, 58 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RAX] 
CMOVNB EBX, EDX 
ADD CX, -93 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -17 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
