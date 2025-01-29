.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], AL 
NEG SI 
INC RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 1 
AND RSI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RSI] 
CMOVNO RAX, RDX 
DEC RDX 
AND CX, BX 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
XCHG ECX, EDI 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST AL, 3 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], 112 
SUB RAX, 1472800038 
CMOVS CX, BX 
ADD SIL, -127 
SETO SIL 
CMOVL SI, SI 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDI] 
LEA EDI, qword ptr [RCX + RBX] 
ADC RSI, -83 
XCHG RSI, RAX 
AND AL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RBX] 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND AL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -119 
XOR DIL, -7 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], EDI 
SUB EAX, 1381560853 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RSI] 
CMOVNO RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
SBB DX, -71 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
