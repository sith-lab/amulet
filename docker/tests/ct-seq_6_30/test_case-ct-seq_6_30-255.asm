.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CBW  
OR DX, 1 # instrumentation
ADD EAX, -12 
CMOVNL BX, AX 
CMP AL, -44 
MOVSX EDI, BX 
JNB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, -17 # instrumentation
CMOVBE EDI, ECX 
SUB SIL, 19 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
ADD SIL, -87 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EDX 
MOV SI, -21448 
SBB RAX, 97921499 
AND RCX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RCX] 
JL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], DI 
AND RCX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 92 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], DX 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB DIL, 66 
CMOVB EBX, EDI 
CMOVLE EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DIL 
CMOVNB RAX, RDX 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 88 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EDX 
ADC RAX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
