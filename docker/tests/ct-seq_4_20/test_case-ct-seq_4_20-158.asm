.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 57 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RSI] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
MOV SIL, CL 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RCX] 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 88 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -71 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RBX] 
MOVSX DX, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
SBB CL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
