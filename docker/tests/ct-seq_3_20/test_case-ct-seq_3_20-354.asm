.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RSI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RSI] 
CMOVNL EDX, EDX 
CMP DL, -74 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BSWAP RAX 
LEA RCX, qword ptr [RBX + RCX + 425] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DIL 
AND RDX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RBX 
AND RBX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
