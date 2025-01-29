.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
OR BX, BX 
SUB EAX, ESI 
AND BL, 100 
AND RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RBX] 
CMOVLE RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDX] 
SBB RSI, RSI 
SUB CX, -10 
SETNL BL 
TEST CL, CL 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
CMOVNBE EDX, ESI 
OR RCX, RAX 
SBB ESI, EAX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOP  
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], AX 
CMP AX, AX 
SUB EBX, 58 
AND DIL, -43 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], 99 
ADC AL, 99 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RCX] 
MOV ESI, 61052045 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RBX] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RCX] 
XCHG ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RAX] 
OR CL, DL 
LEA RSI, qword ptr [RBX + RCX] 
CMOVP RDI, RDX 
CMOVNO RAX, RDI 
MOVZX EDX, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], 125 
TEST EDX, 1253533884 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], CL 
CMOVL RAX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
