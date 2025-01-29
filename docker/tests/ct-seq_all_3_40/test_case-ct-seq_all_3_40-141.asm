.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA DI, qword ptr [RCX + RAX + 62669] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], SI 
BSWAP RDI 
NEG RBX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 34 
MOV SIL, 97 
BSWAP ECX 
AND RAX, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RAX] 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], SIL 
SETO BL 
SBB CX, -98 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
CWD  
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], RAX 
SETNO AL 
CMP EAX, -163835489 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RDX 
CMOVL CX, CX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -103 # instrumentation
NOT RAX 
SETZ AL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RBX] 
MOV DL, 31 
ADD SIL, BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB EDX, EDX 
XADD DL, CL 
SUB DIL, SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], BX 
TEST DIL, DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDI] 
SETNL DL 
CMOVL CX, AX 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 22968 
XADD EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
