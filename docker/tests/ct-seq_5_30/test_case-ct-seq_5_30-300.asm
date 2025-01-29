.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], ECX 
SAHF  
ADD BX, -28 
AND RCX, 0b1111111111111 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -55 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RSI] 
SUB AL, 121 
CMOVZ RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RDI 
IMUL ESI, ESI, -16 
SBB EDX, -118 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EAX 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 53 
ADD RAX, RDI 
IMUL DX 
SBB RCX, RDX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RBX 
IMUL DIL 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -58 # instrumentation
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 59 # instrumentation
SBB AX, 6487 
MOVZX RSI, SI 
ADC AL, -73 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RAX] 
SBB EAX, 464406581 
CMP RAX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
