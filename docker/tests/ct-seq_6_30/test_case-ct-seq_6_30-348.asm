.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWD  
ADD CL, 95 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -55 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 35 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDI] 
ADC SIL, DIL 
JRCXZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, 74 # instrumentation
CMOVP CX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RAX] 
ADC RBX, RDI 
SUB RDI, 47 
CMOVLE EBX, EAX 
CMOVNBE DX, BX 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], DX 
AND RDX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RDX] 
CMOVB EDI, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 117 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], AL 
NEG AL 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -12 # instrumentation
CMOVNP ECX, EBX 
ADC AL, -21 
MOV ECX, 719076912 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RCX] 
XCHG RAX, RAX 
IMUL SI 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 119 
CMOVNLE EAX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
