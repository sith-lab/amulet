.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
IMUL ESI, EDI, 6 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
SUB AL, CL 
MUL BL 
CDQ  
SUB AX, CX 
IMUL BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
CMOVZ BX, DX 
ADD SIL, 81 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DIL 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 42 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RAX] 
XCHG CL, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -42 
SAHF  
XCHG DX, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], ESI 
CMP EDX, 29 
AND RAX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 44 
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RSI] 
BSWAP EBX 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], 106 
AND RDI, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
