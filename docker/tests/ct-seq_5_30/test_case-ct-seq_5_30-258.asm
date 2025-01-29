.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -104 # instrumentation
CMOVZ RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DL 
MOVSX RCX, DIL 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
ADD DIL, -3 # instrumentation
CMOVL RAX, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RSI] 
JRCXZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RBX] 
SBB AL, -3 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDX] 
LOOP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 11 # instrumentation
ADC EAX, 114 
NEG RDI 
MOV ESI, -1375669004 
CMOVO ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
MOV RSI, RDI 
JMP .bb_main.3 
.bb_main.3:
NEG SI 
SUB DL, -5 
AND RSI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RSI] 
ADC RCX, 33 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RAX] 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOV BL, BL 
CMP RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
MUL RDI 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DL 
CMOVNBE RSI, RSI 
CMOVZ AX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
