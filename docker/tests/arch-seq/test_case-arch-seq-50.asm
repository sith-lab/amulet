.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDI] 
CMOVZ RSI, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RDI] 
ADC BX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
MOV EAX, -1006662283 
ADC CL, BL 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RBX] 
ADD AL, -27 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RCX] 
XOR RAX, -1707827745 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], 107 
NEG CL 
XCHG RBX, RAX 
MOV DI, 7612 
AND RDI, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], -90 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RSI] 
ADD DL, 11 
XCHG ECX, EAX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RDX] 
SBB CX, DI 
SBB BL, AL 
ADD CL, 33 
NEG ESI 
AND RBX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RBX] 
SETNS CL 
INC EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -23 
SBB AL, CL 
CMOVNL RAX, RBX 
ADC CX, -1 
OR SI, 3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
