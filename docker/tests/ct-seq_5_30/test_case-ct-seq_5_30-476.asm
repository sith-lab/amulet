.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
CLC  
JNZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
CMP EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -28 
AND RCX, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RCX] 
CMOVBE DI, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RDX 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RAX 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDX 
ADD DIL, -64 # instrumentation
CMOVNBE RDX, RDX 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD BX, -118 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 96 
DEC BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 99 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DX 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RAX 
MOVSX RDI, AL 
ADD EAX, 809212828 
ADC AX, DI 
CMP EBX, 47 
MOVSX DI, DIL 
CMOVNZ RSI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
