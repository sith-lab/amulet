.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 108 # instrumentation
CMOVNLE ECX, ECX 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RBX 
IMUL EBX, EAX 
ADD DIL, -91 # instrumentation
CMOVNZ EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RSI 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], CX 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
CMP RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RBX 
CLC  
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX EDX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RBX] 
XCHG CL, DL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RDI] 
SUB ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], ESI 
CMOVB SI, BX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI] 
CMOVB RDI, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EBX 
MOVSX RDX, DX 
SUB CX, DX 
MOVZX DX, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
