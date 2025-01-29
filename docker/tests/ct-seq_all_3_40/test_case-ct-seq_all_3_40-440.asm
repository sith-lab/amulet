.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL EDX 
AND RAX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RAX] 
XOR BL, CL 
IMUL RBX, RDX 
ADD DIL, 29 # instrumentation
SETL BL 
DEC AL 
INC RCX 
MOVSX RAX, SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RCX] 
OR SIL, 12 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RBX] 
CMOVS DI, DI 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -91 
MOVZX EDI, AX 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], DX 
XADD BX, SI 
XOR RDX, -124 
CMOVNZ RCX, RSI 
STC  
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
OR AX, 23627 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], SI 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -41 # instrumentation
SETL CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -91 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], SIL 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
DEC DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 13 
XADD RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], -127 
CMP CL, 32 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], 87 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], SI 
INC RDI 
SUB CL, -122 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
