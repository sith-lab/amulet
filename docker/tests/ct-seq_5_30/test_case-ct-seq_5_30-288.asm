.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDX 
IMUL RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
MOVSX EDI, CL 
CWD  
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -6 # instrumentation
CMOVB CX, AX 
INC AL 
CMOVNB DI, DI 
ADC RAX, -2060205883 
JMP .bb_main.2 
.bb_main.2:
XCHG EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RAX] 
CMOVNLE CX, DI 
XCHG RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 0 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -68 # instrumentation
ADC DI, AX 
CMOVO DX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -46 
LEA RCX, qword ptr [RAX + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RAX] 
ADC EAX, EAX 
ADD DIL, AL 
MUL DX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
