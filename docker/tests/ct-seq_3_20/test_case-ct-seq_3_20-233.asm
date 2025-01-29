.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL AL 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
MOVZX EDI, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RDX] 
ADC EDX, 102 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDX] 
SUB DL, -6 
JMP .bb_main.1 
.bb_main.1:
OR DX, 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
STC  
AND RSI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RSI], 120 
ADD DIL, -44 # instrumentation
XCHG CL, BL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 2 # instrumentation
ADC ESI, -74 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
INC BL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
