.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RSI, SI 
CBW  
DEC DX 
AND RAX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDI] 
CMP RDI, -42 
CMOVNZ BX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -7 
IMUL RBX, RSI, -6 
ADD AL, -19 
IMUL AL 
ADC RAX, -1154326600 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RDI] 
IMUL EDI 
AND RBX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RBX] 
SUB EAX, 1099750338 
CMOVL RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
ADD DIL, -57 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV SI, 1612 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 8 
ADC EDI, -101 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDI] 
IMUL RSI, RBX, 11 
ADC CL, AL 
IMUL SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
