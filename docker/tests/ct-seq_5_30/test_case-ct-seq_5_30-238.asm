.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -123 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], DX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -3046 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
CMP RDI, -30 
AND RAX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RAX], 45 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 4 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EDI 
MOV RSI, RSI 
SBB BL, AL 
INC EDI 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -31 
AND RDI, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RBX] 
ADD SIL, 78 # instrumentation
MOV EDX, ECX 
CMOVNBE DI, SI 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 34 # instrumentation
CMOVNO AX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDX] 
CMP RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDI] 
IMUL EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
