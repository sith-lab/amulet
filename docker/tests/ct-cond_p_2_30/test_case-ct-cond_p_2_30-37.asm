.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB ESI, EDX 
ADD AL, DIL 
MOVSX RCX, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RCX] 
CMP CX, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 116 
CMOVNZ EDX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RDX] 
ADC EAX, -99 
ADC RAX, 1901521666 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RDX 
ADD SIL, -67 # instrumentation
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], CX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -16438 
MOV AL, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 1560793500 
IMUL ESI, EAX, 12 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
MUL CL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RDI] 
CMOVLE EDI, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EBX 
AND RAX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RAX] 
SBB RAX, 501131023 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
NEG CL 
XCHG RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
