.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RAX 
ADD ECX, -68 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RBX] 
CMOVNO EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RSI] 
INC RSI 
SBB DL, -92 
ADC RAX, 769938233 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -43 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RCX 
IMUL ECX 
DEC DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -58 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RSI 
SBB CL, DL 
SBB EAX, EDI 
INC CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
