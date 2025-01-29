.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
INC DI 
CMOVNS RCX, RAX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RSI] 
MUL BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RDI 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RAX] 
SBB CL, AL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], DX 
MOVSX BX, CL 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 78 
NEG DL 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
