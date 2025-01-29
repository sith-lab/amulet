.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDX] 
CMOVL CX, AX 
SUB RAX, RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RBX] 
IMUL SIL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -5 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 111 
AND RAX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RAX] 
NEG DIL 
ADC RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -113 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 112 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RBX] 
ADD DIL, -24 # instrumentation
CMOVP RCX, RAX 
CMOVNL DI, DI 
CBW  
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
SBB AX, -29464 
AND RSI, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], BL 
MOV EDI, 1048236090 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DX 
LEA RBX, qword ptr [RAX + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 21045 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 1826095256 
MOVZX DI, CL 
INC RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
