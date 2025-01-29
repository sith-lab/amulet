.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC ESI 
MOV RDX, 4970291403735839400 
JRCXZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MUL RCX 
CMP DIL, DL 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 45 
SUB EAX, -1439293972 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], BX 
AND RSI, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
CMOVP DX, SI 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RCX 
SUB AX, 73 
IMUL AX, AX, 38 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -87 # instrumentation
ADC EAX, -111 
SUB ECX, 97 
SBB ECX, 46 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDX] 
CMOVNS CX, DI 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -28 # instrumentation
ADC SI, 125 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
CMOVNZ EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
