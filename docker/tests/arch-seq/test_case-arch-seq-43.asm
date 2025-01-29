.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RBX] 
ADD EAX, 839883900 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 10 
CMOVP SI, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RBX] 
SETP DL 
AND BX, DX 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, -25 # instrumentation
CLC  
CMC  
CMOVNO EBX, EBX 
SUB EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ESI 
NEG DL 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, 27 # instrumentation
MOVSX RBX, DL 
SBB AX, 12554 
MOVZX EBX, SIL 
SBB EBX, -85 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
XCHG RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RCX] 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], CX 
LEA DX, qword ptr [RDI + RAX] 
CWD  
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], 50 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ECX 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
OR AL, 58 
INC EAX 
CMPXCHG AL, AL 
XOR DL, AL 
CMOVB SI, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDX] 
CMP EAX, 185072537 
SBB RAX, RDI 
JP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
IMUL EDX, EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
CMOVLE EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
