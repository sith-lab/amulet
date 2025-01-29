.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RBX 
CMOVB SI, BX 
AND RCX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], SIL 
ADD CL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -44 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ESI 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -125 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], DI 
SBB AX, 4319 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], CX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RAX] 
LEA EDX, qword ptr [RBX + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 29974 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RAX 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
