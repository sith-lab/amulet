.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG ESI 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], 23113 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EBX 
ADD SIL, 61 # instrumentation
CMOVNO RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RCX] 
ADC DI, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDI] 
JNL .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 117 
OR CX, 0b1000000000000000 # instrumentation
BSF CX, CX 
NEG CL 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
SUB RSI, RDX 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RBX] 
LOOP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 2 
AND RDI, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RDI] 
CMOVNS RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RBX] 
JNP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, 62 # instrumentation
CMOVNP DI, BX 
ADD RSI, RDX 
CMOVNZ AX, DI 
MOVZX BX, CL 
JMP .bb_main.5 
.bb_main.5:
CMP EAX, EDX 
CMOVBE DI, SI 
SBB DIL, -47 
ADC EDI, 113 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -68 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], -116 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
