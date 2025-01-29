.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX], -13 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RSI] 
ADC CX, -63 
MOV BL, 65 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RDI 
AND RCX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 110 
LOOP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 60 
AND RSI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], DX 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], -45 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDX] 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 64 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
