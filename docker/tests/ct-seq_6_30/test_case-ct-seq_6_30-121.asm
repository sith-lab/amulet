.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
MOV RDX, -5526055614066832996 
CMOVP ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -1 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RSI 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], SIL 
IMUL DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RCX] 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
CMP DL, 38 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], BL 
SUB EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RSI] 
MOV SI, -339 
JL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 71 # instrumentation
CMOVNZ AX, DX 
AND RCX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RCX] 
CMOVP CX, DX 
XCHG RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RBX] 
JRCXZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MUL BX 
MUL ECX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
