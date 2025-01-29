.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
MOVZX DX, CL 
ADD EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RAX] 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
CMP SI, DX 
LEA ECX, qword ptr [RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EDX 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RSI 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
