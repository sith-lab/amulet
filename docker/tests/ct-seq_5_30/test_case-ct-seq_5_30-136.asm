.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDI 
XCHG AX, AX 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
CMP AX, -19 
DEC RBX 
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
ADD CL, 22 
AND RDI, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDI] 
LAHF  
AND RCX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RCX] 
MOVSX AX, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ESI 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RAX 
ADD DIL, -38 # instrumentation
JBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
SUB DL, 23 
MOVSX EAX, BX 
CMOVBE CX, SI 
JMP .bb_main.3 
.bb_main.3:
SUB RAX, -1641918188 
MOVZX BX, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], BX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
ADD SIL, 96 # instrumentation
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
NEG RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
SUB CX, 11 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
MOV CL, -26 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
