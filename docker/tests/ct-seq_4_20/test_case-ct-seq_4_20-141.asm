.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 2133815595 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOVZX EDX, DL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -61 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RCX], 51 
IMUL RDX, RDI 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 76 
CMOVS CX, AX 
AND RCX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RCX] 
BSWAP RBX 
SBB DIL, 75 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 124 # instrumentation
CMOVNL RCX, RCX 
XCHG EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
