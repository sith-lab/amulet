.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 17 # instrumentation
SETNP CL 
TEST SIL, -89 
AND ECX, EAX 
IMUL AX, BX 
XCHG DX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], DX 
AND ESI, EAX 
CMOVO RDI, RSI 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, 58 # instrumentation
CMOVNP ESI, ECX 
ADC DL, 46 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -103 
OR BX, DI 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 277333723 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RSI 
AND RSI, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RSI] 
SBB RAX, 1927629757 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDX] 
AND CL, 36 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDI] 
CLC  
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RBX 
ADC RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], DI 
CMOVNZ CX, AX 
SBB EAX, EDI 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 64 # instrumentation
CMOVLE RSI, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
SBB RBX, -47 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -67 
OR DIL, 84 
CMP RAX, -1329830992 
MOVSX EBX, CL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDI] 
ADD RBX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
