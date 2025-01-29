.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG DI, BX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDX] 
INC CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 12 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
SUB RAX, 405475237 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DL 
NEG RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RSI] 
LEA RSI, qword ptr [RDI + RDX + 58817] 
ADD AX, -31922 
CMOVNB RAX, RCX 
NEG SI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDX] 
ADC EBX, 110 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RCX 
CBW  
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 66 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EBX 
MOVSX ESI, BX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], AX 
CLD  
ADD EBX, ESI 
CMP RDI, -111 
SUB CL, -102 
CMP AL, -71 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
