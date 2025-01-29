.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RAX] 
ADD SIL, -7 # instrumentation
ADC AL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], 9 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 67 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 14 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -94 
AND RCX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -74 
SUB BL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], BX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
DEC ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RSI] 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -35 # instrumentation
CMOVNZ DX, BX 
AND RBX, 0b1111111111111 # instrumentation
XCHG RDX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
