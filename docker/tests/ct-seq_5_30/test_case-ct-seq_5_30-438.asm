.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -105 # instrumentation
DEC RAX 
SBB RDX, RDI 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDI 
ADD DIL, 88 # instrumentation
CMOVLE RDI, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RAX] 
CMP RDI, 86 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], CX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -14 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV CL, -104 
IMUL CX 
AND RCX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RCX] 
CMOVP BX, DX 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
ADD SIL, 28 # instrumentation
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], SI 
ADC EAX, 870102498 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX], 5 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RSI] 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RSI 
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
SUB EDI, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 87 
CMOVBE EDI, EAX 
CMOVP DI, AX 
MOVSX BX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
