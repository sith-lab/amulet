.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], DX 
CMOVL RAX, RDI 
MUL SI 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RCX] 
CMOVZ RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
AND RDI, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RDI] 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -31 
SBB CL, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 19 
CBW  
AND RDI, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDI] 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RSI] 
LEA EDX, qword ptr [RCX + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
