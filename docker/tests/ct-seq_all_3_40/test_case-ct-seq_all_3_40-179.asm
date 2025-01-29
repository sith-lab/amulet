.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], AL 
SUB AL, 100 
AND RBX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], 45 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], RBX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RCX 
AND RBX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RBX] 
MOVSX EDX, BX 
AND RDI, RDX 
SETNB AL 
ADD SIL, 57 
ADD EDI, 65 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL BL 
ADD DIL, -126 # instrumentation
SETZ BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
MOVSX EAX, DL 
XOR BL, CL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RSI] 
MOVSX ECX, BL 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], -9 
SUB AX, -31462 
XOR EAX, 35 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RSI] 
IMUL SI 
AND RDI, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RDI] 
IMUL BX, BX 
CMC  
JMP .bb_main.2 
.bb_main.2:
DEC SI 
AND RBX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RBX] 
XOR EAX, 1616316496 
XOR CL, AL 
CMOVNP EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EBX, ECX 
IMUL ESI, ECX 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
NEG BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
