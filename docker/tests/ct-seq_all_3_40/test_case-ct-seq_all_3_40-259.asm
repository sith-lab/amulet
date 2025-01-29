.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RAX, 1674367791 
MOV BL, 55 
CMOVNS SI, AX 
SETNB DL 
BSWAP RBX 
IMUL SI, BX 
IMUL EAX, ECX, -126 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], -6 
SBB AX, 39 
XADD DI, DX 
XADD RDI, RBX 
AND ECX, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], -117 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RBX] 
SETB AL 
AND RDX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RDX] 
XOR AX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], AL 
SETZ DIL 
CMPXCHG AX, BX 
AND RCX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RCX], 123 
CMP RAX, 850897362 
SETNB CL 
SBB BL, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -24 
SUB CL, 44 
AND RSI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -83 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST ESI, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], EAX 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
MOV ECX, -1493197113 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RAX] 
TEST AL, BL 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], RBX 
OR AX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RSI] 
IMUL DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
