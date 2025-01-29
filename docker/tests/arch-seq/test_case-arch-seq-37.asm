.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 3 # instrumentation
SETNP DIL 
AND RDI, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RDI] 
AND SIL, -8 
CMPXCHG ESI, EDI 
CMOVNP RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
ADD SIL, 81 # instrumentation
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 44 # instrumentation
MOVZX AX, BL 
MOVZX EBX, BX 
ADC AL, 44 
MOVSX RBX, SIL 
MUL DX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RDI] 
ADD AL, 10 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RAX] 
NEG DX 
SETNZ CL 
SUB AL, -127 
AND RCX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RCX] 
CWDE  
NEG CL 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 95 # instrumentation
CMC  
CMOVB ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RCX] 
ADC AX, 114 
AND RDX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDX] 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RBX] 
CMOVNP RSI, RDX 
NOT SIL 
XOR DL, DL 
ADC ESI, ECX 
JZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MOVSX AX, SIL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
OR AL, -40 
CMOVNP EAX, EDI 
CMP AL, BL 
AND RCX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RCX] 
SETZ AL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
