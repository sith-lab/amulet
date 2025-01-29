.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], CL 
SBB AX, -23511 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], ESI 
CMOVS SI, DX 
CMOVZ DX, AX 
ADC DI, -115 
SBB SIL, SIL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RSI] 
ADD SIL, 66 # instrumentation
SBB RCX, RDX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL ESI, EAX 
ADC DL, 10 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RBX] 
CMOVS EBX, EDX 
XCHG RDI, RDI 
ADC RAX, -881709043 
ADD CL, DL 
MOVZX EDX, BL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -55 
CMOVZ BX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RCX] 
MUL DL 
ADD SIL, -72 # instrumentation
CMOVL RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
