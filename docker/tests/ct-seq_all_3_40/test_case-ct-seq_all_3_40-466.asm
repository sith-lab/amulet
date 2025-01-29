.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
SUB AL, -110 
IMUL DIL 
MUL SIL 
CMP EAX, -741607255 
CMOVLE RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -93 
NEG BL 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -10 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RDI] 
SUB RDX, 36 
OR SIL, -1 
OR RCX, -16 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDI 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 38 
MOVSX AX, AL 
OR EAX, ECX 
XOR CL, BL 
AND DI, -104 
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
MOV DL, DL 
MOV DIL, -13 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EDI 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], 20 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RCX 
XADD AL, CL 
AND RBX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RBX] 
XOR EAX, -1533154731 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RAX, RAX 
CMOVNB EDX, EAX 
CMOVNBE RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
