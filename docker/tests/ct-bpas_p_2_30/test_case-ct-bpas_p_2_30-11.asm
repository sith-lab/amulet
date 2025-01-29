.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
MUL RSI 
ADD DIL, -103 # instrumentation
CMOVNP ECX, ECX 
CMP RBX, RCX 
ADC EAX, EDX 
INC EBX 
CMP BL, -17 
SUB CL, AL 
INC BL 
CLC  
IMUL RBX, RSI, -29 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RCX 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
LEA CX, qword ptr [RCX + RAX] 
CMP DX, -114 
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
ADC AL, 94 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP RAX, -2107534556 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
CMOVNB EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -45 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EBX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
MOV CL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
