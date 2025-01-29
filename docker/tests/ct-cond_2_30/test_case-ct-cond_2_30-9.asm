.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 79 # instrumentation
SBB AX, -17032 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDX 
ADD SIL, -71 # instrumentation
CMOVS SI, AX 
CMP SI, SI 
MOV DX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
CMOVBE EBX, EDI 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RCX] 
CMOVBE RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RSI] 
MOVSX DX, CL 
IMUL SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -108 
MUL BL 
SBB EAX, -1237623850 
AND RAX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RAX] 
NEG DL 
CMOVBE EDI, EBX 
CMP AL, 24 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -30 
ADD DIL, -33 # instrumentation
LAHF  
LEA RAX, qword ptr [RDI] 
LAHF  
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RDX 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
ADD CX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
