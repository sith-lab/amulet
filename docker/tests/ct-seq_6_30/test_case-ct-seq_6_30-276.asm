.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RAX] 
MOVSX EDX, AL 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
MOVSX EDI, DL 
AND RDI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DX 
NEG EAX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDI 
CMOVNL RCX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RAX], 59 
ADD DIL, -23 # instrumentation
CMOVP EDI, ECX 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
ADC DIL, DL 
ADC DL, 7 
JB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RDI] 
CMP BL, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RDX 
SBB AX, 30133 
IMUL EBX, EDI, 92 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 105 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RBX] 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
IMUL RAX, RAX 
ADD SIL, -117 # instrumentation
CMOVNS DI, DX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -29 
SUB AX, AX 
ADC SI, -127 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
