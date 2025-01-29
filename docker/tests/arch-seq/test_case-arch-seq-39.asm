.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX EDX, AX 
AND RBX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RBX] 
CLD  
MOVZX EDI, DL 
ADC BL, -91 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], SI 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND AX, -1866 
SETZ AL 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], DIL 
OR AX, 15541 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 96 # instrumentation
SETNZ BL 
ADD EAX, -26 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RAX 
XADD BX, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], EBX 
CMOVNO DX, AX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDX 
CMOVNP RCX, RDI 
TEST EDI, ESI 
MOV AL, CL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 90 # instrumentation
CMOVNO EDI, EAX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RCX], RDX 
AND RCX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RCX] 
CMOVP EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], -103 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR DI, SI 
CMOVP CX, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 65 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
ADD SIL, -54 # instrumentation
CMOVNS RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EBX 
AND RSI, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RSI] 
SETNP SIL 
SUB ECX, -97 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
