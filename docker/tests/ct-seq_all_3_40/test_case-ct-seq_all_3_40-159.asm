.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST SIL, DL 
CMOVL RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RCX] 
ADC EDX, -5 
SBB AL, -89 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EDI 
IMUL EDX, EAX, 49 
ADD DIL, -110 # instrumentation
CMOVNZ BX, SI 
AND RSI, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RSI], RBX 
SETLE DL 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], RDX 
SETNP AL 
TEST AX, -10183 
ADD SIL, -28 # instrumentation
LAHF  
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], RDX 
MOV EDI, -2060172393 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -20 # instrumentation
ADC BL, -78 
AND RDI, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RDI] 
IMUL RDX, RBX 
XADD DL, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], BL 
SBB EAX, -110 
TEST AL, DL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
CMOVNB EBX, EDX 
XOR EBX, EDX 
AND AX, -9562 
SBB SIL, -125 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], -106 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RBX] 
CMOVL DX, DX 
NEG DIL 
CMOVBE RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], 56 
XOR BX, -56 
SETL BL 
SBB RAX, -2056998587 
CMOVL EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
