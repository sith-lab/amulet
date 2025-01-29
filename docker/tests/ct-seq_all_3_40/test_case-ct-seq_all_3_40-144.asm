.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 16 # instrumentation
SBB RAX, 2085057904 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RDX] 
SBB EAX, -753411177 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], -40 
CMOVLE AX, AX 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
ADD DIL, -101 # instrumentation
CMOVNBE DX, DX 
ADD AX, DX 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDI] 
DEC ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
XADD DL, BL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDX 
OR BL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -66 
CMOVNO RDI, RBX 
SBB RDI, -90 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
INC DL 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], EAX 
CMP AL, -27 
TEST SIL, 62 
AND RDI, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDI] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 120 
INC RDX 
AND RCX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RCX] 
DEC RDI 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RSI 
XOR RDI, 116 
AND RBX, -100 
SETZ DL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], 14 
AND RBX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RBX] 
SETNB DL 
AND RCX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
