.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 1 # instrumentation
CMOVNLE AX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], 111 
CMOVZ CX, SI 
MOV RBX, RSI 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RCX] 
SUB EAX, 206707974 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
CMOVNZ CX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], ECX 
NEG SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], 91 
SBB CX, -107 
CMP EAX, -395416965 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
IMUL AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -39 
JRCXZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
CMOVL SI, CX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], AL 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], BL 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
XCHG EDX, EAX 
DEC RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
