.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], CL 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
MOVZX ECX, CL 
SBB AX, -7151 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
IMUL RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], ESI 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RDX] 
CMOVNZ EDI, EAX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RDI] 
SUB EAX, EDX 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
XCHG EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RSI] 
SUB BL, DL 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 87 # instrumentation
CMOVO RSI, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -101 # instrumentation
SBB RAX, -1453411540 
AND RBX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RCX 
JMP .bb_main.5 
.bb_main.5:
DEC DL 
CMOVNO EBX, EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -76 
CMP RAX, 938135604 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
