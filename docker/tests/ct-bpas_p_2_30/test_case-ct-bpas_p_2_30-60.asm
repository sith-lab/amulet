.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -99 # instrumentation
ADC AX, -10052 
CMOVP EDX, ECX 
MUL DI 
SUB RDI, -16 
SBB RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 85 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], BL 
ADC RCX, 64 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RDX] 
ADD RCX, 82 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 91 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 912178284 
IMUL RBX 
ADD DIL, 31 # instrumentation
CMOVP RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDX] 
DEC BL 
SBB RAX, RSI 
BSWAP RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
CMOVLE RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
MOV RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
