.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -91 # instrumentation
ADC RAX, -94 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], 74 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], -51 
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 52 # instrumentation
DEC RAX 
ADC AL, 40 
MOV ESI, 908405965 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
MOVZX AX, CL 
CMP SIL, 52 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 13 
CMP AX, 7299 
MOVZX EDX, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 105 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], -121 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RAX 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -40 # instrumentation
CMOVZ RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RSI] 
MOVSX ECX, BX 
MUL DIL 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -90 # instrumentation
CMOVNS SI, DX 
ADD AL, -91 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
CMOVNO RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RSI] 
CMP ECX, 3 
SUB EAX, 681875962 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
