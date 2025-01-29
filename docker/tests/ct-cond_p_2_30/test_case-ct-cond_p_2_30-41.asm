.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
OR SI, 0b1000000000000000 # instrumentation
BSR DI, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -68 
CWD  
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RBX] 
SUB DL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDI] 
MOVSX ECX, BX 
ADD EAX, -1955856429 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDX] 
MOV RAX, 6023228310228922468 
SUB DX, CX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 34 # instrumentation
CMOVNLE RDI, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
CMOVZ RSI, RDX 
ADC AL, CL 
ADD RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RDI] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EBX 
ADD DIL, 113 # instrumentation
CMOVNP ESI, EDI 
MOVSX BX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
