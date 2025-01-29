.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RAX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], BX 
ADC AX, -25571 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 88 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 109 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
ADC AX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RAX] 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], BX 
CMOVNLE EDX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RSI 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RDX] 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
