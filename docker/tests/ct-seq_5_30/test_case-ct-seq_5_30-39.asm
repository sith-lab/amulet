.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD BL, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], BL 
CMOVNL ESI, EDI 
SUB AL, -37 
CMP AX, -13587 
CMOVNP EDX, EBX 
CMP EDI, ECX 
MUL RDI 
ADD EAX, 377983616 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD DIL, 61 # instrumentation
ADC RDX, -20 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 54 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RAX 
JNP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], -38 
AND RCX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RCX] 
CWDE  
INC SI 
AND RBX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDI], -33 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DIL 
ADC RAX, 218898063 
AND RAX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], -69 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 118 # instrumentation
ADC RDI, RDX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ESI 
LEA DX, qword ptr [RSI + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
