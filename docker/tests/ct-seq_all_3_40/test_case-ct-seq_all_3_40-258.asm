.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EDX 
NOT EBX 
MOVSX EAX, CL 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
XCHG DX, DI 
SETB BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RSI] 
AND DI, 78 
CMOVNP AX, SI 
AND SIL, -24 
CMOVNBE RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDX] 
CMOVNP RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], DX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV SIL, DIL 
AND RDI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDI], RCX 
SETLE CL 
SETZ DL 
AND EAX, -612790890 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RAX] 
OR BX, BX 
OR AL, -74 
CMOVNO RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], DI 
XCHG EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], DL 
CMPXCHG EDI, EDI 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
CMOVZ RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RDI] 
MUL RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], 40 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 9 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -68 
AND DL, -109 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
