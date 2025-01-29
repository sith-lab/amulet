.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 26 # instrumentation
ADC RDX, RDX 
CMOVP SI, CX 
IMUL ESI, EBX 
ADD SIL, -50 # instrumentation
MOV DL, -14 
MOVZX EDX, SIL 
CMOVNL CX, AX 
MOVSX DX, BL 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], -97 
CMOVB DX, DI 
NEG AL 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 67 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -22 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD AX, 12440 
AND RCX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RCX] 
ADD DIL, BL 
CMOVP SI, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RCX] 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RDX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDX 
CMP AL, -29 
AND RAX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RAX] 
ADD AL, DIL 
CMOVO CX, AX 
CMOVNBE CX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
CMOVLE RCX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
