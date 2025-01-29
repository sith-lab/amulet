.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 37 # instrumentation
CMOVZ SI, CX 
SETNBE DL 
MOVSX RCX, AX 
ADC SIL, -53 
MOVSX RAX, BL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DIL 
SUB BL, 65 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], DL 
SETNS AL 
CMOVP EAX, ESI 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 50 # instrumentation
ADC DL, 124 
CMOVNB AX, BX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], BL 
TEST DL, DL 
CMOVNB DX, CX 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DIL 
SETNL DL 
ADD AX, 2643 
OR BL, DL 
CMOVB EDX, EAX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RDX] 
MOVZX RDX, DX 
BSWAP ECX 
BSWAP ESI 
SETNLE BL 
ADC DI, BX 
CMOVNB AX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RAX] 
SETB AL 
XOR DL, 115 
SETLE SIL 
CMOVNBE ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDX] 
OR EAX, 562385089 
AND RBX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
