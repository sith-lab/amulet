.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RAX] 
CMOVNS ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
ADC SIL, 86 
CMOVNO CX, SI 
JBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, 21 # instrumentation
CMOVNP EDI, ESI 
DEC DL 
SUB EDI, -97 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
ADC SIL, -64 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], ESI 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RBX 
JNZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD DIL, -51 # instrumentation
SBB ESI, EDI 
ADC RAX, 14 
ADC RDX, RSI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -121 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 47 
MOVZX EDX, CX 
XCHG RDI, RAX 
DEC DI 
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX], 122 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
