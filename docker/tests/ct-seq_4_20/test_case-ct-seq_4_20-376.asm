.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -106 # instrumentation
CMOVNO BX, BX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RBX] 
ADC RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RBX 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -121 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], AL 
JMP .bb_main.2 
.bb_main.2:
XCHG RSI, RAX 
LEA SI, qword ptr [RDI + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 100 
AND RSI, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -110 
AND RSI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RSI] 
CMOVNO AX, CX 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
