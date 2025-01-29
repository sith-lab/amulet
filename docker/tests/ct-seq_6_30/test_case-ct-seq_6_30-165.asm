.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 67 # instrumentation
CMOVNLE ESI, ESI 
MOV DIL, -103 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
MUL ECX 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -105 
JP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
SUB AX, 23836 
MOV ESI, -479937784 
DEC AL 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
SBB AL, BL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], BL 
BSWAP EAX 
LOOP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
NEG RAX 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -20 # instrumentation
SBB AX, -7822 
ADC DL, -72 
DEC AL 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RBX] 
CMP DL, -75 
AND RCX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -2005316819 
ADD DIL, 18 
AND RSI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RSI], 53 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RAX] 
SBB EAX, -1483716308 
MOVZX RBX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
