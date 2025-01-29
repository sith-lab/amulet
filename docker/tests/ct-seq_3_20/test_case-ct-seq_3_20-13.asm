.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 120 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RBX] 
CMOVS EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -73 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], 70 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDI 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -39 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], 40 
ADD EDI, EAX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
CMP BL, BL 
MOVSX DX, DL 
SUB BL, CL 
AND RDX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
