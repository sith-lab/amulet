.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RCX] 
CMOVL CX, DI 
MOVZX DI, AL 
CMOVB BX, BX 
SUB DIL, 107 
CMOVNLE EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 105 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -15 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], -72 
SBB DI, -65 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 112 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RDX] 
ADC DL, BL 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDI 
CWD  
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -55 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], AL 
ADD EAX, -1820752014 
MOV AL, -69 
AND RDX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
