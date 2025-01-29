.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -42 # instrumentation
MOVSX RDI, CX 
JS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RSI] 
MOVSX EAX, CL 
AND RSI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RSI] 
MOVZX DX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], -80 
MOV SIL, -32 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RSI 
ADC RDX, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 32 
JNB .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
MUL CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RSI] 
ADC AX, -101 
MUL ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
IMUL CX, AX, -62 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 24930 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
IMUL RAX, RAX, 94 
AND RAX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RAX] 
XCHG SI, AX 
MOV DI, -10449 
JNBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, 12 # instrumentation
SBB DIL, 18 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
XCHG CX, CX 
LOOPNE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, -1 # instrumentation
ADC AX, -762 
CMOVNZ RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RCX], -27 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
