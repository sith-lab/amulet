.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RBX] 
CMP BL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RSI] 
SUB AL, 42 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA EDI, qword ptr [RSI + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDX] 
SBB RAX, -1305426507 
ADC SI, 48 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDI] 
JNP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RSI] 
MOV EBX, -96102933 
SBB AL, 7 
CWD  
JMP .bb_main.3 
.bb_main.3:
DEC DI 
CMOVL RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RSI 
SBB DX, -22 
JLE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -15 # instrumentation
CMOVLE SI, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDX] 
ADD AX, 2041 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], BX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 1865346365 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
