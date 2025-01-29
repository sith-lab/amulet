.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RBX] 
OR CX, 0b1000000000000000 # instrumentation
BSF AX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RDI 
XOR DX, DI 
NEG SIL 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDI] 
SETNBE CL 
OR DI, 0b1000000000000000 # instrumentation
BSF SI, DI 
CMP AL, 96 
XADD EDI, EDX 
SUB ESI, -36 
CMOVBE SI, BX 
OR DL, 1 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RBX] 
XOR AL, -13 
NOT AL 
MOV AX, SI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
NOT AL 
INC BX 
JMP .bb_main.2 
.bb_main.2:
ADD EDI, EDI 
DEC AX 
MOV ESI, -1662614493 
SETNZ DL 
TEST SIL, -116 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RCX 
IMUL CX, AX 
OR EAX, 118 
AND RCX, 0b1111111111111 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -889164429 
MOV SIL, DIL 
TEST AX, -17577 
MOVSX ESI, BL 
XOR RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
ADD DIL, 26 # instrumentation
CMOVL DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
