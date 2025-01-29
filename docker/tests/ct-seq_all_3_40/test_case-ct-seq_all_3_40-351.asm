.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -24 # instrumentation
CMOVNLE ESI, ECX 
SETNS CL 
CMOVL AX, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], AX 
MOVZX EDX, BL 
OR DX, 0b1000000000000000 # instrumentation
BSR AX, DX 
ADD SIL, -48 # instrumentation
SETLE BL 
SBB DX, BX 
CMOVB RAX, RDX 
SETB BL 
CWD  
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 28 # instrumentation
SETO DL 
CMOVBE EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RCX] 
XOR BL, AL 
XOR BL, 113 
XOR DI, SI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], -62 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
CMP AX, 6644 
CMPXCHG DX, SI 
AND RAX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RAX] 
CMOVO CX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], EBX 
XCHG SIL, DIL 
ADC CL, 73 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RSI] 
SUB AX, 10238 
AND RCX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -5 
CMOVNZ RSI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
