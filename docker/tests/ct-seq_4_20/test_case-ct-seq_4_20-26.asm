.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
AND RCX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
ADD DIL, -77 # instrumentation
CMOVNS EDX, EDI 
CMOVNB BX, CX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -63 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RDI] 
CMOVO BX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RBX] 
CMOVLE RSI, RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], 75 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDI 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EBX 
JMP .bb_main.3 
.bb_main.3:
MOVZX RAX, DX 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], ECX 
CMOVNS RDI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
