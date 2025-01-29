.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
MOVZX RDX, AX 
JNLE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RBX] 
XCHG DIL, AL 
MOVSX EBX, DIL 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDX 
SUB CL, -55 
JMP .bb_main.2 
.bb_main.2:
SUB RCX, RDI 
ADD SIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RCX], 76 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EBX 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
CMOVBE EAX, EAX 
SUB DIL, -107 
AND RCX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RCX], 15 
INC AL 
CMOVS EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 78 
MOVZX ECX, DIL 
CMOVZ RBX, RDI 
JMP .bb_main.5 
.bb_main.5:
XCHG RSI, RAX 
CMP BL, -55 
SBB SIL, 24 
NEG RBX 
MOV AL, 72 
AND RAX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
