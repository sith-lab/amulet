.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -74 # instrumentation
LEA EBX, qword ptr [RBX + RAX + 19735] 
CMOVNL EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
ADD DIL, -46 # instrumentation
CMOVZ RBX, RAX 
CMOVNB EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -46 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -122 
CMP EDI, 113 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ECX 
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -93 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], 57 
AND RDX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RCX] 
CMOVNL EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
