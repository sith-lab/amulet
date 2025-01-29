.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
SUB BX, -35 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RBX] 
CMOVZ SI, DI 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -23 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ECX 
CMP EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RSI] 
IMUL BX, DI, -120 
JMP .bb_main.1 
.bb_main.1:
INC RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RCX] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RCX] 
SUB RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
CMOVO RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -58 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
MUL ESI 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], BL 
CMP CX, CX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], 7 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB RAX, 44 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD SIL, -118 # instrumentation
SBB BL, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
MOVSX RCX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
