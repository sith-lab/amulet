.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
CMOVNS ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EAX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 93 
ADD EAX, -694899936 
IMUL EDI, EDI, 97 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
IMUL RAX, RDI, -106 
ADD AL, 124 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 103 # instrumentation
MOV RBX, -3518842273670201319 
SBB BL, SIL 
CMOVB SI, SI 
CMOVNS DI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 90 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 23 # instrumentation
CMOVLE ESI, EDI 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], ESI 
ADD DI, SI 
XCHG RBX, RAX 
SBB AL, SIL 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
IMUL EAX, EAX, 29 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, -123 # instrumentation
CWD  
CMC  
AND RDI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
