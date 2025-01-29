.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 87 # instrumentation
XCHG AX, CX 
CMOVNLE ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
INC EDX 
MOVZX ECX, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 56 
CMP CL, BL 
CMOVNZ RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EBX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RCX] 
MOVZX RDI, DIL 
ADC SI, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RCX] 
XCHG AX, AX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 23 
SBB RCX, 95 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDX] 
ADD AL, -102 
AND RCX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RCX] 
XCHG BX, BX 
XCHG ESI, ESI 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
MOVSX DX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
