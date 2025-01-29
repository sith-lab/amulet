.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
CMOVB RAX, RDX 
CLD  
CMP RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RAX] 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EDI 
XCHG RSI, RAX 
DEC ECX 
SUB BX, -125 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], BL 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 75 # instrumentation
CMOVB DX, AX 
ADD RDI, -49 
AND RDI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RDI] 
LAHF  
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
IMUL RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
CMP RBX, RSI 
SBB AL, -96 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], 32 
CMOVNL AX, CX 
LEA ESI, qword ptr [RAX + RAX] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -14 # instrumentation
CMOVNB SI, DX 
DEC ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
