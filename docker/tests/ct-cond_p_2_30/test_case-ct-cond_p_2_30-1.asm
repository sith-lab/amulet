.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STD  
XCHG RSI, RCX 
MUL ESI 
CMP RAX, -1452018292 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
NEG DX 
SUB DIL, -37 
ADC BX, SI 
SAHF  
MOVSX ESI, AL 
CMOVNO DX, BX 
CMOVL RDX, RDI 
SUB RAX, RDI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -67 # instrumentation
CMOVNZ RDX, RSI 
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -116 
SBB RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -66 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDX] 
MOVSX ECX, CL 
CMOVO AX, DX 
SUB DIL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -74 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
