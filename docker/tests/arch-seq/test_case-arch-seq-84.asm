.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RAX, -1689474938 
IMUL ECX, EDI, 97 
XCHG EDX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RDX] 
XOR SI, DI 
CMOVNBE DX, CX 
SBB AL, -120 
SETNO BL 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
CMP AX, -7615 
MOV RCX, RCX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -58 # instrumentation
LEA DI, qword ptr [RCX] 
SETNLE AL 
XADD DI, SI 
SAHF  
CMOVNZ AX, SI 
CMOVO RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
XOR RCX, RSI 
XOR AX, -10838 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 10 # instrumentation
SBB DIL, -53 
MOVSX BX, CL 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
XOR RDX, 93 
SUB RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DIL 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RCX] 
MOVZX ESI, DX 
AND RSI, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RSI] 
SETBE DL 
TEST AX, CX 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 115 # instrumentation
SBB RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RDI] 
SETBE AL 
AND RSI, -70 
AND CL, 17 
AND SI, -87 
SETBE CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
