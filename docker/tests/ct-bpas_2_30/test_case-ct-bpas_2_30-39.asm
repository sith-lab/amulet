.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL EBX 
NEG EAX 
CMOVNS BX, BX 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DIL 
SBB AX, 2244 
CMOVP RAX, RDX 
CMOVNLE RDX, RSI 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -1201560853 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
ADD RAX, 46 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 26 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RAX] 
CMOVL ESI, EBX 
ADC RAX, 1206630230 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDI] 
NEG EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RAX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EAX 
STC  
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
NEG RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
