.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EDX 
OR EDX, 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], SI 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RSI] 
MOVZX RAX, BL 
MOVZX BX, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RSI] 
CMOVNBE AX, CX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
MOV SIL, -12 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDX] 
ADD RAX, -1918591510 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
IMUL EDX, ECX 
CLD  
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], ECX 
IMUL EDI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
