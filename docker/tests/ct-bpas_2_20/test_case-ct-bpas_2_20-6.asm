.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 4 
AND RSI, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RSI] 
CWDE  
MOVZX EDI, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], -73 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], -104 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], ECX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -125 
AND RSI, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
