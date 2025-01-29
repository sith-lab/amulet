.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], ESI 
OR DX, 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RDX] 
ADC RCX, RDI 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DI 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DI 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RDX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -55 
AND RCX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDX] 
ADC EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
