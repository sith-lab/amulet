.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 112 # instrumentation
CMOVNP DI, BX 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], BX 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DIL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -421875386 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD DIL, 18 # instrumentation
MOVZX DI, byte ptr [R14 + RSI] 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], BL 
JMP .bb_main.1 
.bb_main.1:
MOV ECX, EDX 
OR DL, 1 # instrumentation
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EBX 
ADD SIL, -124 # instrumentation
SBB RDI, -124 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], 22 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], EDI 
SUB DL, AL 
JNP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -46 # instrumentation
CMOVNZ EDX, ECX 
JMP .bb_main.3 
.bb_main.3:
NEG DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
DEC EBX 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
SUB CX, BX 
AND RAX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RAX], 31 
OR BX, 0b1000000000000000 # instrumentation
BSF AX, BX 
SUB BX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -123 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
