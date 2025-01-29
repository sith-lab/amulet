.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 105 # instrumentation
CMOVZ ECX, ESI 
ADC RAX, -1747185358 
SBB DL, AL 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
CMOVO EBX, ESI 
ADC AL, 87 
MOV CL, DIL 
ADD EDX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], 412788693 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], 118 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 68 
ADC DL, DL 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RBX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 1277866338 
NEG RDX 
MUL DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], ECX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], CX 
MOV CL, 45 
MUL EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
ADD SI, SI 
LAHF  
MOVZX EDX, BL 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -52 
ADD SI, 63 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], CX 
SBB ESI, -47 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
