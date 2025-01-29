.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 17 # instrumentation
CMOVP AX, DX 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
CMOVB RCX, RDX 
JNP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD DIL, 38 # instrumentation
ADC RDI, -98 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
MUL DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RDX] 
IMUL AX, AX 
ADD RAX, RDI 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RSI] 
ADD RBX, RBX 
SUB DIL, 11 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -17 # instrumentation
XCHG SI, AX 
CMOVS EDI, ECX 
SUB EDI, EDX 
IMUL RBX, RSI, 49 
ADC BL, 67 
ADC BL, -54 
CMOVO EAX, ECX 
CMOVNB DI, AX 
LOOP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], -111 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
SBB EAX, -1659202499 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
DEC CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
