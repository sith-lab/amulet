.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], -7 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], -92 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DIL 
ADD ESI, -55 
LOOP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD SIL, 12 # instrumentation
CMOVNS DX, SI 
CMOVP RBX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
ADD CX, DX 
XCHG ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -25 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDI] 
ADD RAX, RDX 
AND RAX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RAX] 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, -125 # instrumentation
ADC SIL, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RAX 
MOVSX RCX, AL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
JB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
CMP EAX, 186030925 
AND RDX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RDX] 
JNLE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, -65 # instrumentation
CMOVNZ AX, CX 
ADC AX, 22529 
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX], -27 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], BX 
SUB DX, -90 
ADC DIL, 1 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -102 
CMP ESI, -27 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
