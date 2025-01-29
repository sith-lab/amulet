.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
CMOVNL RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 99 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
SUB RBX, RDI 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
MOVSX DI, BL 
SUB ESI, -105 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], SIL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -111 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
