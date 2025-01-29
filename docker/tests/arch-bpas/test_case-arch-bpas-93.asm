.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RBX] 
ADC SI, SI 
LEA BX, qword ptr [RAX] 
AND RAX, 0b1111111111111 # instrumentation
OR RAX, qword ptr [R14 + RAX] 
NEG BL 
SETS BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], SI 
OR DI, DX 
TEST AX, -13919 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
CMP CX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -72 # instrumentation
CMOVB EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], BL 
SUB EBX, 106 
OR AX, 10152 
CMOVNLE RAX, RBX 
MOVSX RDX, AL 
IMUL RAX, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RAX] 
MOV AX, 5083 
OR EAX, 882934573 
AND RAX, 517351560 
ADC EDX, ECX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND EAX, -211043947 
CMP AL, -56 
CMOVNB BX, CX 
AND RBX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RBX], 65 
ADD DIL, -120 # instrumentation
SETLE DL 
SETNBE CL 
INC BX 
AND RDX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDX], -8 
TEST DX, DX 
CMOVO RBX, RAX 
CMP DX, DX 
TEST AL, DL 
CMOVLE RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 19 
AND RCX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], 95 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
