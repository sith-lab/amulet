.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -54 
AND AL, -62 
CMOVNLE RDX, RSI 
OR EBX, -45 
XOR AX, -10319 
CMOVNO RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], DL 
CMOVNO RDX, RDX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
OR DL, DL 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], -6 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RBX] 
AND AL, -57 
ADC DL, 18 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND BX, -94 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -119 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 105 
MOVZX RBX, CX 
AND RAX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RAX] 
SUB CX, DX 
AND RBX, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RBX] 
CMOVL EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -2018541080 
ADC CL, DL 
SBB DIL, SIL 
SETBE DL 
SETO AL 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -96 # instrumentation
SBB CL, -31 
IMUL RCX 
SBB DL, DL 
SBB RBX, 1 
XCHG DI, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RCX] 
AND DL, CL 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RSI], 87 
AND RDX, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], -40 
XOR SIL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
