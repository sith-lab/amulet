.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RSI] 
CMP BX, 31 
SUB SIL, -43 
CMP BL, BL 
SUB SIL, -59 
CMP RDX, 43 
CMP AL, 33 
CMOVNS EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], AX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RCX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -99 # instrumentation
CMOVS RAX, RAX 
CMP AX, 9104 
IMUL EDI, EDI 
ADD SIL, -94 # instrumentation
XCHG RDX, RAX 
CMOVBE DX, CX 
MOV EBX, -1410865828 
CMOVZ RSI, RBX 
STD  
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
CMOVBE DI, DI 
AND RDX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDX] 
ADD RCX, RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -1094693160 
SUB RDX, RCX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
