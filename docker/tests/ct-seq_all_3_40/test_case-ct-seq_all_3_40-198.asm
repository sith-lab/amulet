.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -38 # instrumentation
CMOVLE SI, CX 
CMP BX, -81 
MUL CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
NOT AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], 116 
MOVSX EAX, CL 
AND RBX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RBX] 
ADD BX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], CL 
CMOVO RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDX] 
CMP BL, BL 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
SUB AL, 78 
SETNL BL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RCX] 
AND AX, -6894 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
CWDE  
MOVSX RCX, AL 
AND RDX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 37 # instrumentation
ADC RAX, RCX 
CMOVP EBX, ESI 
ADC AX, -28 
ADD AL, 93 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RDI] 
XCHG DL, AL 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RSI] 
IMUL EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RCX], RDI 
MOVSX ECX, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
