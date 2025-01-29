.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
ADD BL, 16 
INC DI 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], 106 
SETS CL 
SETB CL 
MUL RDI 
OR AL, 111 
TEST SIL, DIL 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 105 # instrumentation
ADC RAX, 1674785148 
MOVSX RSI, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RDX] 
SBB ESI, EBX 
MOVZX EAX, AL 
OR RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDX] 
SUB EDI, -93 
CMOVO RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -79 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RSI] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG CL, CL 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], AX 
XOR EAX, 1979937395 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RCX] 
MOV CX, BX 
CMOVLE CX, BX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], -78 
CMOVLE DX, DI 
SETS BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RDI] 
MOV DI, -28288 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -44 
XOR DX, 70 
ADD RAX, 11 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -88 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
