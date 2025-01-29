.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC EDI 
CMPXCHG RSI, RDX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -62 
XOR AL, AL 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], DI 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -103 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DIL 
AND RCX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RCX] 
AND EAX, -350562110 
TEST RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 1703 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], 37 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDX 
CMPXCHG DL, AL 
JMP .bb_main.1 
.bb_main.1:
XCHG CL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], -81 
CMOVNL RSI, RCX 
CMOVL CX, SI 
CMOVLE EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
ADC RAX, -135544036 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
CMC  
CMPXCHG DL, DL 
AND RAX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RCX] 
SBB AX, 26717 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RDX 
CMOVNP AX, AX 
CMOVNP ESI, EBX 
MOV BL, 82 
CMP EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
