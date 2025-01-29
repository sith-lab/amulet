.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
OR DX, 1 # instrumentation
SUB AL, CL 
CMOVZ RSI, RCX 
ADC EDX, 110 
CMOVS EAX, EDX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], DX 
CMP BL, BL 
XCHG AX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
LEA ECX, qword ptr [RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -52 
MOVZX RDX, BL 
ADC CL, DL 
AND RSI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RSI] 
NEG DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDX] 
SBB AX, 16109 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -117 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
