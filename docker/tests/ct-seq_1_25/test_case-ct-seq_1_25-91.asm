.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RAX] 
ADD AL, -54 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RBX 
ADC AL, -115 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 76 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -12 
MOVZX ESI, BL 
CMOVS CX, DX 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
MOVZX DX, AL 
IMUL ESI 
INC DL 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DX 
CMOVLE EAX, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 5 
INC DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
CMOVNB ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], 58 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
