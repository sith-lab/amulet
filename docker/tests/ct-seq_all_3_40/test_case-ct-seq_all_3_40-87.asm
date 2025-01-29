.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -83 # instrumentation
CMOVNP RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RCX] 
SETLE BL 
AND RSI, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
SETB BL 
XOR AL, -23 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], AX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], CX 
SETO DIL 
XOR RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EAX 
SUB SI, 22 
LEA RCX, qword ptr [RDX] 
TEST SIL, DL 
CMPXCHG DL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RSI] 
XOR AL, 65 
XOR DIL, DIL 
MOVSX RDI, SI 
CMC  
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDX], RAX 
ADC RAX, 535809535 
AND RDI, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RDI] 
NOT DI 
OR ESI, EAX 
NOP  
IMUL EAX, ESI, 27 
MUL DX 
AND RDI, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RDI] 
MOVZX EBX, DI 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], -27 
DEC DL 
AND EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RSI], RSI 
AND RDI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDI] 
CMOVB EBX, EBX 
TEST RAX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
