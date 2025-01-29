.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
SBB AL, 59 
SBB EAX, ECX 
SETLE AL 
SUB AL, -77 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RCX] 
XOR RAX, 221602799 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
ADD SIL, -112 # instrumentation
CMOVNBE RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDX] 
ADC AL, DL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RBX] 
AND RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
NOT SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], AL 
LEA DI, qword ptr [RCX] 
TEST BL, 92 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
DEC SIL 
LEA EAX, qword ptr [RDX + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD SIL, 42 # instrumentation
CMOVO RSI, qword ptr [R14 + RBX] 
LAHF  
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
CMOVLE EAX, EBX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RDX] 
CMOVS RBX, RDI 
ADC AL, DIL 
DEC RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 36 
XOR BL, CL 
SETP BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], DL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], CL 
SETNL CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
