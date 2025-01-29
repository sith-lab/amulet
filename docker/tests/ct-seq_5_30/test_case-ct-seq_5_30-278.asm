.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 46 # instrumentation
SBB AX, -20103 
AND RBX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RAX] 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
NEG EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EAX 
CMOVP RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], -127 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], AX 
ADD DIL, 14 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EDX 
JMP .bb_main.2 
.bb_main.2:
MOVZX RCX, CL 
MOVSX RSI, SI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EAX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EBX 
ADD SIL, 89 # instrumentation
CMOVNL EAX, EDI 
XCHG BL, DIL 
NEG SIL 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -108 # instrumentation
SBB RBX, RSI 
SUB DI, DX 
CMOVNZ RAX, RDX 
CMOVNS SI, CX 
SUB RCX, RBX 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -83 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 76 
CMOVNB ECX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
