.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RBX] 
OR AX, 0b1000000000000000 # instrumentation
BSR BX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RCX] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
IMUL AL 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RSI] 
CMOVNS EDI, ESI 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
SUB DL, -55 
LEA RDI, qword ptr [RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 67 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -53 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], -20 
CMOVNS EDI, ESI 
BSWAP RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
