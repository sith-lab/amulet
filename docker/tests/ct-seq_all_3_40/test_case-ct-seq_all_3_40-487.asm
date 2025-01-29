.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ESI, AL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], -95 
XOR RDX, RDI 
SETNB DL 
SUB ECX, 67 
MOVSX ESI, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], DI 
XOR RAX, -1726044867 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX RCX, DX 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDI] 
OR AL, -66 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], DI 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -90 
CMOVBE EDX, ECX 
XOR CL, -54 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
IMUL EDI, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], RDX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
SBB RDX, RSI 
TEST AX, 8776 
CMOVNL RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RAX] 
CMOVO EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RAX 
OR AX, -1788 
CMOVNZ RBX, RSI 
AND RAX, -894668390 
MOVZX ECX, CL 
ADC AL, -38 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], 107 
CMOVNP RBX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
