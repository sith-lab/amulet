.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EDI 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
CMOVB RDX, RDX 
ADC RCX, 72 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -52 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RAX] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDI] 
SAHF  
CMP AX, -57 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
MUL SI 
INC DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RDI] 
SUB EAX, -1118215091 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 69 
CMP BL, 23 
CMOVZ EBX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
