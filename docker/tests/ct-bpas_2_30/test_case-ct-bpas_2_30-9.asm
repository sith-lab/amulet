.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -28 
AND RSI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RCX] 
MOV DI, SI 
CMP RAX, 84 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DIL 
ADC AX, 25378 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RAX] 
CBW  
MOVSX RDX, AX 
ADC RDX, RBX 
SBB RDI, RCX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], -54 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], 73 
SBB AL, -84 
MOV DIL, DL 
ADC RAX, 54263266 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
SUB BX, 88 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], -15 
CMOVO RBX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
