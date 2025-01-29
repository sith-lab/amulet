.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -93 # instrumentation
XCHG BX, AX 
CMOVNL RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EDI 
MOV DL, 92 
ADC RDI, RBX 
ADD CL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -4 
CMOVO EAX, ESI 
SUB RAX, RCX 
AND RSI, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 37 
CMOVO ECX, EBX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP AL, 81 
AND RDI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -4 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 120 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 108 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RCX] 
CMOVS RCX, RSI 
CMP RAX, -119 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
