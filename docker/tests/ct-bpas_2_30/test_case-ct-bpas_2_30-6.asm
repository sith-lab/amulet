.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
XCHG RDI, RDX 
SUB AL, -88 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
SUB DX, 52 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDX] 
CMOVO EAX, ECX 
SUB AL, 38 
CMOVL BX, BX 
NEG ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -115 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RDI, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -85 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -29 # instrumentation
SBB DL, -105 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RBX] 
SBB EBX, -42 
CMOVZ ESI, EAX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EBX 
AND RCX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RAX] 
CMOVNB RCX, RDI 
CMOVNO RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDI] 
MOV DIL, AL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 76 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
