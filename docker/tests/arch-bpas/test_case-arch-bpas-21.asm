.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ECX 
NOT AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
ADD SIL, 67 
XCHG RAX, RAX 
CLC  
OR RBX, RAX 
AND AL, -70 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -50 # instrumentation
CMOVB ECX, ECX 
XCHG AL, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RAX], ECX 
CMPXCHG EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RCX] 
XOR DL, 114 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RAX] 
DEC EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RAX] 
XCHG CL, BL 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], 116 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ECX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
SETB CL 
XCHG BL, DL 
CMOVL EBX, ESI 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RAX] 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -127 # instrumentation
SETBE SIL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
NOP  
SUB SIL, -35 
MOVSX EBX, BL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 21 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RCX 
CMOVNB SI, SI 
OR DI, 100 
NEG BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
