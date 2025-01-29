.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], DIL 
SETL SIL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
XCHG BX, CX 
MUL EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDI] 
DEC RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
CMOVNO RSI, RSI 
CMOVZ CX, AX 
CMOVNLE EDI, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], DL 
CMP SI, -33 
XOR EAX, 1135512248 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], AL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -104 # instrumentation
ADC EAX, -1536371273 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RSI] 
SUB RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
CMP EDI, -99 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX], -20 
ADD SIL, 101 # instrumentation
CMOVNLE CX, AX 
SBB SI, AX 
XADD EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], -31 
IMUL EAX, EDI, -93 
JMP .bb_main.2 
.bb_main.2:
NOT AL 
IMUL RDI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 78 
SETNBE DL 
SUB DI, 81 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RAX 
CMPXCHG EBX, EDI 
SETNP DL 
AND RCX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RCX] 
XOR EDI, -68 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 66 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], -101 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
