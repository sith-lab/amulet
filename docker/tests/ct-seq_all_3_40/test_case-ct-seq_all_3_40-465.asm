.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 15 # instrumentation
NOP  
SETB SIL 
CMPXCHG RAX, RDX 
XOR DL, -103 
SBB EDX, -77 
XOR BX, BX 
ADD DIL, 72 # instrumentation
LAHF  
MOVZX EBX, DX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RSI] 
XCHG EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], AL 
NEG DIL 
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDX], ECX 
MOVSX SI, AL 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], -29 
CMP DL, 36 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND BX, -47 
IMUL RBX, RDX, 103 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
SETNL SIL 
ADC EDX, -98 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RCX] 
CMOVNS RDI, RDX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD EAX, -964730099 
SETZ DL 
CMOVNZ RBX, RSI 
SETP DL 
SBB RDI, RBX 
CMOVNO ESI, ESI 
TEST AX, -13976 
ADD DIL, -88 # instrumentation
MOVSX EBX, CL 
LAHF  
CMOVNP AX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
