.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RAX] 
SETB AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RSI] 
NEG AL 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
INC RAX 
LEA RDI, qword ptr [RDX + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
XOR RAX, -35 
SBB BL, AL 
NOP  
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RAX] 
CMOVNZ EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], ESI 
ADC EAX, 2052151486 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], -106 
CMOVO RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RBX] 
CWD  
AND RDX, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RDX] 
CMOVNBE EAX, ECX 
OR CX, 0b1000000000000000 # instrumentation
BSF DI, CX 
XOR DX, 96 
CMOVNB RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 82 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
XCHG RCX, RAX 
SETLE BL 
ADC CL, BL 
ADC DL, CL 
CMOVNLE RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
SETNS CL 
SETNS DL 
AND RDI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDI] 
CMOVNL SI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
