.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RAX] 
CMP SIL, -63 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RDX] 
CLC  
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
SUB DL, AL 
AND RSI, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RSI] 
CMP AX, -9634 
AND RDX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDX] 
SBB AX, 4689 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -61 
XCHG RAX, RSI 
IMUL RSI, RBX, -127 
ADD DIL, -124 # instrumentation
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 105 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
