.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], ECX 
SBB AX, -23904 
AND RDX, 0b1111111111111 # instrumentation
ADD AL, -35 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
CMOVB RDX, RDX 
CMOVNL ECX, EDI 
CMP CX, DI 
XCHG DIL, BL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], -87 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RAX] 
IMUL BL 
MOV EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RBX] 
SUB BL, CL 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
LOOP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
INC AX 
AND RBX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RBX] 
JNZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -65 # instrumentation
ADC RSI, -67 
SBB AL, -112 
CMOVNL EDX, EAX 
CMOVNS BX, BX 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
LOOP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
CMP DL, 37 
AND RBX, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 82 # instrumentation
CMOVNP RBX, RSI 
LEA ECX, qword ptr [RCX + RCX + 37967] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
