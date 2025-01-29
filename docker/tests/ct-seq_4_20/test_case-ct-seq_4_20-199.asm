.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 25 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], 101 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EDI 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 1 # instrumentation
AND DX, word ptr [R14 + RAX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RAX] 
ADD DIL, -48 # instrumentation
CMOVO ECX, EDX 
CMOVNL RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RBX] 
MOV CL, BL 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RSI] 
ADD SIL, 42 # instrumentation
MOV AL, -89 
CMOVNO AX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
