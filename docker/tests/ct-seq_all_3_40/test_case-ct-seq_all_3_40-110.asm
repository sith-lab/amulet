.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RCX] 
CMOVLE EDX, ESI 
IMUL DIL 
MOV ECX, -1838554928 
OR EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 437553510 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], BL 
LEA AX, qword ptr [RCX + RDX + 3288] 
MOVSX RDX, DI 
IMUL EAX, ESI, -113 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], SIL 
AND RCX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RCX] 
TEST RAX, -226663925 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RCX] 
ADD AX, -9898 
CMP AL, CL 
CBW  
MUL RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RBX] 
SBB RSI, 99 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -39 
XCHG DL, CL 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], -108 
XOR AL, -84 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 92 # instrumentation
CMOVS ECX, EBX 
SETP DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], -78 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], 65 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RBX] 
SETO DIL 
MOVZX SI, SIL 
CMP EAX, -619042809 
SETNS SIL 
CMOVNB RDX, RSI 
CMOVZ EDI, EDI 
CMOVNBE RCX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
