.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDI], 47 
MOV CL, -102 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -34 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RSI] 
SUB RDI, -24 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RSI] 
CMOVZ RSI, RDX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], AX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], -21 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], BL 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 10 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 25 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 30 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
