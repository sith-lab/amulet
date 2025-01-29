.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
MOVZX RDX, DL 
CMP DIL, -118 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 20 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], CL 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 18 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDX] 
ADC DIL, AL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 1 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV EDI, -271649057 
MUL DL 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -64 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
