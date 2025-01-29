.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -127 
CMOVNZ ECX, EDI 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 42 # instrumentation
LAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RAX] 
XCHG RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
CMOVNS RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI], -75 
INC RDX 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX] 
SUB EAX, -1573566220 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
CMP EBX, ECX 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 79 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -107 
SUB SI, CX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 37 # instrumentation
SBB RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RCX 
CDQ  
CMOVNO EBX, EBX 
ADD BL, 9 
MOV DIL, BL 
JMP .bb_main.5 
.bb_main.5:
MOVSX EAX, CL 
MOV CX, -3412 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
