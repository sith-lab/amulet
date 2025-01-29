.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ECX 
CMOVBE EAX, EAX 
CMP DI, DX 
CMPXCHG EAX, EDI 
CMP DL, -57 
IMUL CL 
OR CL, CL 
AND SIL, DL 
CMOVB AX, AX 
CMOVNO CX, DI 
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 57 # instrumentation
ADC RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], 22909 
AND RSI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RSI] 
MUL RDI 
ADD DIL, 75 # instrumentation
BSWAP RCX 
CMOVP EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -42 
AND EAX, 1362299553 
CMOVNP RDI, RDX 
CMOVNS BX, DI 
ADC EAX, 1397579294 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], DL 
SETO DIL 
CMPXCHG DX, CX 
CMOVBE ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 31 
CMP DIL, -13 
AND RBX, -127 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DIL 
MOVSX SI, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RDI] 
CMOVZ RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RSI] 
CMOVNO DX, SI 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -54 
NEG AL 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], DIL 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI], 58 
MOVSX CX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
