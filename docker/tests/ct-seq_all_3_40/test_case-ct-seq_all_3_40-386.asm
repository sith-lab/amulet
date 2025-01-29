.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  
AND SIL, AL 
IMUL EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RBX] 
XOR AX, -9058 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND SIL, -15 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RAX] 
CMPXCHG EAX, EDX 
SETNS AL 
ADC DIL, 0 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 67 # instrumentation
CMOVL DI, AX 
SBB AL, 67 
AND RSI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RSI] 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -63 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RDX 
DEC RAX 
INC EDX 
SBB RDX, -115 
MOV RAX, RSI 
AND DI, BX 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], SI 
SBB BX, -20 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], AL 
ADD RAX, -148317356 
TEST RDI, 707703620 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
SBB SIL, 11 
MOVSX DX, SIL 
AND EBX, EDI 
SETNL CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDI] 
SETNP DIL 
CMOVBE DX, CX 
MOVZX ECX, AL 
XCHG CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
