.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], SI 
CMOVNZ RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
ADD CX, -92 
SUB AX, -25994 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RAX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDI 
AND RBX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RBX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -109 # instrumentation
CMOVNB BX, BX 
CMP EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RCX] 
CMOVNL AX, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 117 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
