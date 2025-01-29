.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -120 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 84 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], BL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], BX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], AX 
CMP RDI, 120 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 42 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ECX 
ADC BL, AL 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], 8 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
