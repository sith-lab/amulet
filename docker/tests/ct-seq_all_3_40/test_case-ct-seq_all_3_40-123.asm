.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 29 # instrumentation
CMOVS CX, AX 
XCHG AL, DL 
CMOVBE EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -45 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RBX] 
OR CX, SI 
XCHG RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -1006200393 
NEG RCX 
IMUL RCX 
SUB EAX, 37 
SETZ BL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], ECX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 97 # instrumentation
MOV RCX, RDI 
XCHG ESI, EAX 
SETNO CL 
AND RBX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RBX] 
SETNP DIL 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], SI 
SBB RAX, 279489590 
SBB RAX, -535298101 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RCX] 
SETBE BL 
OR DX, 1 # instrumentation
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RBX], RBX 
OR EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EAX 
SETNLE BL 
CMOVNP ECX, EDI 
IMUL RSI, RCX 
SBB DL, CL 
MUL BL 
OR DI, 0b1000000000000000 # instrumentation
BSF AX, DI 
CMP RCX, RSI 
ADC AX, -2195 
ADC ECX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
