.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -71 
CMP BL, -88 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 72 
ADC AL, 110 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
DEC DL 
AND RBX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RBX] 
SBB EDI, ESI 
JNO .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
CMP AL, 17 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DIL 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RDI 
XCHG RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
ADD DIL, -85 # instrumentation
MOVZX ESI, BL 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RCX] 
CMOVNB RDX, RAX 
IMUL BX 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RAX] 
CMOVNS EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDI] 
INC AL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
ADD SIL, 23 # instrumentation
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EDI 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 38 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
