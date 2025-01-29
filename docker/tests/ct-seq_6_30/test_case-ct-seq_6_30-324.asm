.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 0 # instrumentation
CMOVNB RBX, RDX 
MOVSX CX, DL 
SBB SI, DX 
CMP BL, 35 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DX 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDI] 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -17 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -221773372 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -38 
CWDE  
JB .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
CMP RAX, 1661944974 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RCX] 
ADC SIL, BL 
CMOVNO RDI, RDI 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, -60 # instrumentation
SBB RAX, 1 
MOVSX RDX, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], CX 
AND RCX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RCX] 
XCHG AX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
SBB RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 118 
CMOVZ ESI, EDX 
LOOPE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EBX 
SBB DI, SI 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
