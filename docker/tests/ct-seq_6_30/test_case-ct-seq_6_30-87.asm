.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AX, 15021 
MOV AL, -14 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], BL 
MOV CL, AL 
NEG RBX 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EAX 
CMOVBE EBX, ECX 
CMOVNBE DI, SI 
CMP RCX, 123 
JMP .bb_main.2 
.bb_main.2:
SUB RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RSI] 
MOV EDX, ESI 
CMOVL AX, CX 
DEC AL 
CMP CX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RAX] 
SUB DI, SI 
CMOVNO RDX, RAX 
JNO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
MOVZX RDX, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], SIL 
OR DI, 0b1000000000000000 # instrumentation
BSF DI, DI 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -82 # instrumentation
CMOVZ ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EDI 
AND RCX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RCX] 
CMP AX, SI 
CMOVB EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
