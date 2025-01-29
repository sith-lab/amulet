.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 2 
CMOVS AX, AX 
AND EDX, EBX 
IMUL EAX, EDI, -44 
XCHG AL, BL 
CMOVNO ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], BL 
MOVZX EBX, DX 
ADC AL, 43 
AND SIL, 50 
MOV DX, BX 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], ESI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
CMP EAX, -1156656771 
SUB AL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
AND EAX, -75 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RDX] 
ADC DIL, 25 
XCHG RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDX] 
XOR AX, DI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
XOR DL, BL 
CMOVNZ BX, SI 
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
IMUL ESI, EBX, 57 
XOR SIL, 3 
NEG BL 
MOVSX RAX, SI 
AND RAX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RAX] 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], -60 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], 4 
AND RDI, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], DX 
TEST BL, 50 
NEG RAX 
CMOVBE SI, CX 
CMOVNO ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
