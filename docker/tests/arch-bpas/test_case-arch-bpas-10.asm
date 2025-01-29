.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 92 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], 28 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RCX] 
CMPXCHG EDX, EDI 
OR EAX, -641849574 
CMP AL, -56 
OR AX, -16655 
OR AL, -39 
INC CL 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
CMOVNZ BX, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], ESI 
ADC DL, DL 
SETNO BL 
SETLE DL 
AND RBX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RBX] 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
TEST RDI, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], AL 
MOV AL, DL 
MOVSX ECX, SI 
OR ESI, -125 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RSI] 
ADD ECX, -127 
CMPXCHG EBX, EDI 
ADD AX, -20 
CMOVNLE RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDI], SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RBX] 
XOR ESI, ECX 
JMP .bb_main.4 
.bb_main.4:
MUL RBX 
SUB RAX, 1662810758 
AND RSI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RSI] 
SBB SI, 2 
AND RDI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RDI] 
TEST DL, 116 
AND RAX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
