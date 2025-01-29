.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EBX 
CMP DL, 112 
CMC  
CMP AL, -28 
CMC  
CMC  
AND RSI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RAX] 
MOVSX AX, BL 
MOV AL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RAX 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
SUB RCX, 69 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -79 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RCX], ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDX] 
CMPXCHG RCX, RDX 
CMOVNB ESI, ECX 
MOV BX, -5559 
SBB AL, -50 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], BL 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RAX, 151970861 
SBB EDI, 10 
MOV BL, -27 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
CMOVB EDI, EDX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -38 # instrumentation
SBB ESI, 52 
TEST SIL, -52 
SETL CL 
MOV RDI, -386771977520737786 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], DX 
CWD  
MOVSX EBX, AL 
CDQ  
AND CX, -2 
AND RAX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
