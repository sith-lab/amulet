.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 62 # instrumentation
SETZ SIL 
CMOVNB EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], BX 
OR CL, DL 
XOR AL, AL 
IMUL EBX, EDI, 3 
SETB DIL 
TEST RSI, RCX 
OR CX, DI 
AND RDI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDI] 
NOT AL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -22 # instrumentation
SBB AL, 72 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], RCX 
SETO DIL 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], BL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 2 
IMUL BX, BX 
ADD DIL, -67 # instrumentation
NOT CL 
CMOVLE EAX, EDX 
NEG DIL 
AND EDX, 114 
AND RSI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RBX] 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDI] 
ADC CL, BL 
ADD CL, -91 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RAX] 
SBB DIL, BL 
AND RDX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RDX] 
SBB AL, -88 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
XCHG EBX, EAX 
MOVZX RSI, AX 
NOT RAX 
CMOVNLE EBX, ECX 
IMUL RCX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
