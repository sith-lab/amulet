.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -58 # instrumentation
CMOVNL DI, AX 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 29 
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
MOVZX DX, DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDI] 
ADD DIL, -70 # instrumentation
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -71 # instrumentation
CMOVNP RDX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RAX] 
CMOVP EDI, EDX 
MOVZX EDI, DL 
CMOVNLE ESI, EBX 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RAX] 
SUB CL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], CX 
XCHG DL, CL 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDX 
AND RCX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RCX] 
DEC DX 
NEG RCX 
MOVSX EDX, CL 
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 102 
MOVSX ECX, BX 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 123 
ADD EBX, 16 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RCX 
ADD AX, 10021 
MOV BL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
