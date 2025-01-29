.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL ECX, EAX, 97 
SBB AL, DL 
SUB RAX, -32784685 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -27046 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], CL 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, -78 # instrumentation
ADC ECX, -73 
OR DI, 0b1000000000000000 # instrumentation
BSF DX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RBX] 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, 75 # instrumentation
CMOVNBE EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], SIL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
XCHG EDI, ESI 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RBX] 
MOV ESI, 1115243912 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
CMOVNL RBX, RCX 
ADD AL, CL 
AND RCX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RCX], -7 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -65 # instrumentation
ADC BL, 56 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
CMOVNLE RDX, RDX 
CDQ  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
