.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EDX 
DEC EAX 
NEG RSI 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EDX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RCX] 
CMOVNBE EDI, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
SUB AX, -9606 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DI 
ADC RBX, RBX 
ADD EAX, -87 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
CMP AX, -12907 
SBB EAX, -1314510376 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RSI] 
CMP AL, 38 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDX] 
DEC BL 
AND RDI, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RBX] 
OR DI, 0b1000000000000000 # instrumentation
BSF CX, DI 
ADD DIL, -105 # instrumentation
JNS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
JRCXZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 104 
SBB DL, CL 
AND RBX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RBX] 
MOVSX EDX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
