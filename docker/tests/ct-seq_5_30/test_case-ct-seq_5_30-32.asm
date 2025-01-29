.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RCX] 
ADD RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RDX] 
ADC ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 42 
XCHG EBX, EAX 
LOOPE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, 81 # instrumentation
CMOVP AX, BX 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], -67 
LEA EDX, qword ptr [RCX + RSI + 26869] 
JMP .bb_main.3 
.bb_main.3:
MOVSX RBX, CX 
MOV RBX, 8959283518237391310 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -50 
AND RBX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RBX], 54 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 69 # instrumentation
CMOVBE EBX, EDI 
CMOVLE RBX, RDX 
CMP RAX, 90 
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], CX 
MOVSX EDI, BL 
CWD  
ADD CL, BL 
XCHG EDI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
