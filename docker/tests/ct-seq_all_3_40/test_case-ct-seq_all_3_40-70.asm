.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], RAX 
CMOVB DX, CX 
CMOVNBE CX, CX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
CMOVB RAX, RBX 
SETNZ AL 
MOVZX AX, AL 
XADD ESI, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDX] 
XCHG SI, AX 
CMP DX, DI 
MOV AL, -66 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 126 # instrumentation
SETNLE CL 
SBB AL, 15 
OR DX, CX 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDI] 
LEA EDI, qword ptr [RDI + RDX + 3241] 
SETS BL 
NOT AX 
DEC DL 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -52 # instrumentation
SETNZ BL 
ADC RBX, 31 
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
CMOVB EDX, EBX 
CMP DX, 82 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RDX] 
XCHG ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RSI 
CMOVP EAX, ECX 
STD  
CMOVO RSI, RDX 
OR AX, -19804 
TEST RAX, 1881936722 
MOV SIL, -87 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
