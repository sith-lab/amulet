.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG EAX, EAX 
MOV AL, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -108 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 11 
CMOVO DI, DI 
IMUL ESI, ECX 
ADD SIL, -22 # instrumentation
SETLE CL 
CMOVP ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RBX], ECX 
ADC AX, 101 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -28 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], CX 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMPXCHG CL, CL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RDI] 
SBB EAX, 2034591401 
XOR DL, -94 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
CDQ  
MOVSX ESI, AL 
SETNP AL 
CMOVP EDX, ESI 
CMOVNBE AX, DX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RCX] 
CMOVP DI, CX 
TEST AL, -94 
CMOVBE EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], 122 
XOR AX, 110 
AND RSI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RSI] 
IMUL DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RDI] 
CBW  
NEG EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RDX] 
IMUL AL 
AND RBX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
