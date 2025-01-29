.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RSI 
CMOVNZ CX, DX 
CMOVS DI, SI 
CMOVNB RSI, RSI 
XOR RSI, 69 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], -17 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EAX 
SETB BL 
SETNL DL 
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], EDX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR RAX, -1654055801 
XOR ECX, ECX 
SBB RAX, 97784381 
DEC SI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 71 
CMOVNO ECX, EBX 
MOV DL, CL 
SETNP AL 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RSI] 
XOR RCX, RBX 
MOVSX ESI, DL 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
CMOVNS AX, DI 
CMOVL RCX, RAX 
XOR DIL, 90 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RSI] 
XCHG DL, CL 
AND RBX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
CMOVNO CX, CX 
SUB RAX, -1419548138 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND EBX, EBX 
SETZ AL 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], -69 
CMP EBX, -51 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
XOR CL, 83 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
