.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RAX] 
SUB RSI, -32 
SETB DL 
SETNO DIL 
OR DX, 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], AX 
AND RBX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RBX] 
ADC AL, -113 
AND CL, CL 
AND RDX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 115 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -120 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND EAX, 1099724241 
XOR BX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], 30 
NOP  
MOVZX SI, BL 
SUB EDX, 107 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -10 
NOT AX 
SETNBE AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], ECX 
AND RSI, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 85 # instrumentation
ADC DL, CL 
SUB DL, 20 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], RSI 
SETB AL 
CMOVLE RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], AL 
TEST DL, -124 
AND RDX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDX] 
CMOVL DX, SI 
OR EAX, -540077276 
ADC AL, AL 
SETNO BL 
IMUL RBX, RBX, 47 
SUB AL, 71 
STD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
