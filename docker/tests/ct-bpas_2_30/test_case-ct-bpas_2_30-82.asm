.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], DX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 61 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
CMOVNZ CX, DI 
ADC RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -113 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], CL 
SUB EBX, ESI 
MOVSX RDI, DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RBX] 
MUL RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RBX] 
CMP AX, 8874 
CMOVNLE CX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -34 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 15 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], BX 
MOV EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
