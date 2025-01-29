.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AL, -18 
CMOVNB RCX, RAX 
DEC SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], BL 
ADD AL, -81 
CMOVNB EBX, ESI 
CMP AX, -29391 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RAX] 
NEG ECX 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
IMUL DX 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DI 
AND RBX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], 31 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 103 
CMOVNB DX, AX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MUL SIL 
ADC EAX, -1957741326 
MOV DX, -30394 
ADD EAX, -2076754648 
AND RAX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RAX] 
INC DX 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
CBW  
CMOVO EBX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
