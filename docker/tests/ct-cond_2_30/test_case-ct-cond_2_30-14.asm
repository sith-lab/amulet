.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -122 # instrumentation
SBB EAX, -1832047232 
ADC EDI, -127 
CMOVNZ EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], DX 
INC BL 
CMOVNB AX, CX 
CMP AL, AL 
CMOVNP EAX, ECX 
IMUL BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDI] 
IMUL AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -41 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ESI 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RCX 
CMP AL, 17 
SBB EAX, 898177381 
SUB EDI, -85 
ADC AL, -92 
SUB AL, 36 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -117 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], -49 
ADC AX, 2882 
CMOVNO CX, DX 
MOVZX RDI, CL 
ADC AX, 111 
NEG DL 
DEC RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
