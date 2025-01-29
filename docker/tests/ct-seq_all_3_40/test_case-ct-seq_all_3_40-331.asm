.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 82 # instrumentation
SETO AL 
CMOVNP EAX, ECX 
CMPXCHG BL, AL 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], CL 
SUB DL, CL 
CMOVNP ECX, EDX 
ADD EBX, 118 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RBX] 
CMOVS RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RCX], BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 27 
SETB BL 
SUB EAX, 104 
CMP CL, -103 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
TEST AL, 6 
CMC  
NOT DX 
CMOVLE ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], CX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
ADC BL, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDX] 
OR DL, 1 # instrumentation
MOVSX CX, BL 
AND AX, -28560 
SETNS SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 73 
SETNP DL 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
XADD BX, DI 
XOR DL, 77 
NEG RCX 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -66 
AND RSI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RCX] 
SETNBE DIL 
STD  
NEG ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
