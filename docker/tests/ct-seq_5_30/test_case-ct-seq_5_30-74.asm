.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EBX 
CMOVNP RBX, RDX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RAX] 
MUL DX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 90 # instrumentation
CMOVNZ RCX, RCX 
CMOVNB RDI, RBX 
XCHG EBX, ESI 
CMP RDX, -107 
CMOVBE EAX, EDI 
CMOVNL ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RAX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 85 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 22 # instrumentation
CBW  
ADC DL, DL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 227842513 
CMOVNLE RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RDX] 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 1 # instrumentation
CMOVBE BX, SI 
AND RAX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RAX] 
MOVSX RCX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDX] 
CMOVNBE EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ECX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RSI 
CMOVBE RDX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
