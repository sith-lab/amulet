.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 413903258 
SUB EAX, EDX 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
NEG BL 
ADD AX, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], AX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDI] 
ADD DIL, 107 # instrumentation
CMOVNO DI, AX 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], BX 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMP CX, DI 
LAHF  
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDX], -76 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ECX 
CMP AX, 124 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
IMUL BL 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RSI 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], CX 
XCHG AL, DIL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RCX] 
ADD DIL, 42 # instrumentation
CMOVNBE ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RSI] 
SBB EAX, 282413261 
MOVSX EAX, BL 
CMOVNZ AX, BX 
AND RBX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
