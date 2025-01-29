.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], BX 
STC  
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RCX], 31 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV DL, -66 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RDX 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
CMOVZ EDI, EAX 
MOVZX EDX, DL 
IMUL RDX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -85 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RBX] 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD AX, -60 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 112 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -29 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
