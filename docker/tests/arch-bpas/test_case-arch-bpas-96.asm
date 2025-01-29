.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RCX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
ADD BL, DL 
LEA RBX, qword ptr [RAX + RAX] 
SBB EAX, 113 
MUL EDI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDX], DI 
CWDE  
CMP ECX, -128 
ADC CL, AL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RBX] 
ADD RAX, -1581163762 
SETNL DL 
AND RAX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RAX] 
TEST AL, -63 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
NOT RAX 
SETNO DL 
SETNB SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], SIL 
CMOVNO ESI, EDI 
ADD RAX, -1359099754 
XCHG RBX, RSI 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -84 # instrumentation
SETNL CL 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
OR AX, DX 
TEST RDX, 899470849 
LEA EBX, qword ptr [RAX + RSI] 
SETZ BL 
AND EAX, -1518408923 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], -14 
CMOVP RSI, RCX 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], ECX 
ADC SIL, 60 
CMOVNL CX, AX 
MOV CL, CL 
CMOVB EBX, EBX 
CWD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
