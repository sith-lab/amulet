.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX AX, BL 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
IMUL RBX, RBX, -64 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 51 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -90 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], -95 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], SI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DIL 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], SI 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], CL 
SAHF  
ADC AL, -6 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
STC  
MOV CX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
