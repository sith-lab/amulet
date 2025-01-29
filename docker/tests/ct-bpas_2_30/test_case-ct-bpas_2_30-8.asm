.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
SUB AX, -19 
ADD RAX, 140346874 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EDI 
IMUL EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EBX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDI 
ADD SIL, 32 # instrumentation
CMOVNO RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], BX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -20 # instrumentation
SBB BL, DIL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -124 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
SBB AL, -48 
CMOVZ CX, DX 
IMUL RDI, RAX, 114 
ADD SIL, 5 # instrumentation
CMOVZ EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDI] 
ADD SIL, -65 # instrumentation
CMOVZ SI, AX 
SUB ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
STD  
CMOVP ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], -79 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDI] 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RBX] 
MOVZX EDI, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
