.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 28 # instrumentation
SBB SI, 33 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], -111 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 96 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RDI 
JMP .bb_main.1 
.bb_main.1:
CDQ  
SUB AX, -11365 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RDI 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ECX 
JNL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 105 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], SIL 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
IMUL RBX, RDI, -33 
MOVZX RAX, SIL 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RBX] 
MOVSX RAX, AX 
JNS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
DEC RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RCX 
JMP .bb_main.5 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], DI 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -107 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -96 
MOV EBX, ESI 
MOVSX RDX, SIL 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
CMOVNZ RBX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
