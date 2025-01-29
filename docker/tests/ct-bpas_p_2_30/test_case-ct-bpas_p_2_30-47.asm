.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
CMP RDX, 115 
MOVZX ECX, SIL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RAX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RAX] 
SUB DL, CL 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 55 
STC  
MOVSX EDX, AL 
LEA AX, qword ptr [RSI + RSI + 23077] 
ADD BL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RSI] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL RBX, RAX, -9 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RAX] 
CMOVS RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDX] 
SUB DIL, 22 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
INC ESI 
ADC AL, 91 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
CMOVLE RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], SIL 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RBX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ECX 
CMP ESI, -47 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
