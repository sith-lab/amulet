.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC CL 
CMP ECX, EBX 
ADD AL, -5 
CMOVZ DX, BX 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDI 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 56 # instrumentation
MOV BX, -25608 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RDX] 
MOVZX DI, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -6 
MUL AX 
ADC ESI, -88 
AND RAX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DL 
CMOVNBE RDI, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RSI 
AND RDI, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDI] 
ADC AX, 2209 
CMP AX, -240 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -99 
CMOVO DI, DX 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -15 # instrumentation
CDQ  
CMOVS BX, SI 
MOV CL, BL 
JMP .bb_main.5 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
ADD AL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDI] 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
MOVZX RBX, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
