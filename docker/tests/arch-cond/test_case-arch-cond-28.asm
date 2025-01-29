.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
MOVZX RBX, DIL 
SETB DL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RBX] 
OR DX, 0b1000000000000000 # instrumentation
BSF CX, DX 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RAX], RSI 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], -41 
ADD RAX, 509519294 
CMOVNLE BX, AX 
CMOVP RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], ESI 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], 23 
SUB CL, -12 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], BL 
BSWAP EAX 
SETB BL 
ADD RAX, RAX 
CMPXCHG DL, CL 
AND RCX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RCX], EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 42 
SETS DL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -91 # instrumentation
ADC EAX, EAX 
CMP AL, 37 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], DI 
CMP RAX, -65 
SBB AX, 6289 
SUB EAX, 232663136 
ADD ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
OR RSI, RDI 
ADD RDI, RCX 
CMOVB EDX, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RAX], EBX 
MOVSX RBX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
