.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDX] 
XCHG DI, AX 
MOVZX DX, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RSI] 
DEC RSI 
STC  
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
CMP AL, -85 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 13 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RBX 
AND RAX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RBX] 
CMOVS EAX, ESI 
LEA RDI, qword ptr [RDI] 
CBW  
DEC DIL 
AND RCX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RCX] 
ADC DL, -75 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], 72 
SUB EAX, 106 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDI] 
SUB EDI, -82 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
