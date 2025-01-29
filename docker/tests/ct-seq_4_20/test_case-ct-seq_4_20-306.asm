.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
CLD  
AND RCX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RCX] 
CMOVNL RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 125 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], BL 
XCHG CL, CL 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD EAX, -1098583025 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EDI 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
INC RSI 
AND RBX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RCX] 
IMUL DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
