.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EAX, -1370106220 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EDI 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
ADD DIL, 21 # instrumentation
CMOVNP CX, BX 
ADD AL, CL 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -36 
SBB CL, -18 
SBB AX, 10387 
MOVZX ECX, BL 
SUB ESI, -55 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
AND RDI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDI] 
CMP EDI, -120 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DL 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
CMOVNP RDI, RCX 
IMUL BX 
XCHG DI, DX 
AND RCX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RCX] 
MOVSX RCX, AL 
ADC AX, -30484 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
