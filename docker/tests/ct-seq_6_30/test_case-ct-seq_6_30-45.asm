.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, 111 
SBB AL, 123 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 65 # instrumentation
CMC  
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RAX] 
STD  
IMUL DI 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EDX 
LOOPE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], CX 
JMP .bb_main.3 
.bb_main.3:
CMP BX, -53 
MOVZX SI, DL 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], ECX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
CMOVNZ RBX, RDI 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -100 # instrumentation
CMOVNL SI, CX 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX], 20 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], CL 
SAHF  
LOOPNE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RCX] 
MOV RSI, RCX 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
ADC RCX, -120 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
