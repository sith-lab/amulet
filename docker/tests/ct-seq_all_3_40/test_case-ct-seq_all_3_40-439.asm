.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
SUB RAX, RDX 
MOVZX ESI, DX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
OR DI, DI 
ADD BX, DX 
SUB RBX, 94 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 4 
AND RDX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDX] 
OR RDX, -61 
INC RCX 
STC  
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], RDX 
SETS BL 
CMOVNO RDX, RAX 
ADD DX, DI 
DEC DL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 15 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ESI 
SBB DIL, 73 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], AL 
ADD EAX, 1187440478 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], RBX 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], 60 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
CMOVNB ESI, EDX 
SBB EDX, 12 
MOV AX, AX 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], -300874185 
AND RDX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RBX] 
MOV SIL, BL 
XOR ECX, -74 
SETL BL 
CMP ECX, -82 
AND RAX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RAX] 
NOT ESI 
TEST AX, -18821 
CMOVL EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
