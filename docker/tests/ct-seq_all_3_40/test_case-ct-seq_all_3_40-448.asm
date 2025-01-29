.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -116 
SUB EAX, 739935915 
NEG BX 
CMOVNLE RBX, RDX 
AND SIL, SIL 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], 121 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -1745423760 
ADC DX, -102 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RAX 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], BX 
CMOVS RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DL 
TEST AX, -31363 
SBB CL, 119 
XOR AX, 28870 
CMOVNBE RDI, RAX 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
ADD DIL, -34 # instrumentation
CMOVNS RDI, RSI 
ADC SIL, 37 
CMOVNBE RBX, RSI 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], EBX 
NOT CL 
BSWAP RDX 
DEC DX 
ADC EDX, 47 
OR AX, 32536 
AND ECX, ECX 
MOV BL, -72 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], -15 
NOT BX 
SETB SIL 
ADC CX, SI 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RCX] 
AND SIL, DL 
CMOVNZ RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDI] 
SETO AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
