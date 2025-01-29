.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DL, BL 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EDX 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
ADD EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], 7 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
CMOVNO RSI, RBX 
CMOVP RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 276132499 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], 112 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
