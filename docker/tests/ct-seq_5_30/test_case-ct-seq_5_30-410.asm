.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 92 # instrumentation
SBB ESI, 98 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RAX 
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDX] 
CMP EDX, -11 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RBX], -25 
AND RBX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RBX] 
SUB RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], CX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 75 # instrumentation
CMOVNO RDI, RBX 
SBB AL, 68 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
ADD DIL, 88 # instrumentation
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDI] 
MOVZX EDI, AL 
AND RAX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RAX] 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 116 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 8 
NEG CL 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RCX 
CMP DIL, 38 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
