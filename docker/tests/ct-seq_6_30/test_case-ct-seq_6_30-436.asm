.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DL 
ADD AX, 23302 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
ADC AL, 66 
JO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
IMUL EAX 
ADD SIL, 58 # instrumentation
CMOVNS RAX, RAX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RAX 
JRCXZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
LEA AX, qword ptr [RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 93 
SBB DI, 34 
MOVZX EDI, BL 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RSI 
ADC RBX, 90 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -57 # instrumentation
CMOVL BX, DI 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -1 
BSWAP EBX 
JNZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
