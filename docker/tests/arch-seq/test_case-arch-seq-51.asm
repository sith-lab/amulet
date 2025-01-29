.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -1 # instrumentation
SBB SIL, BL 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
MOVZX EDX, CL 
XOR EAX, 16508401 
OR DIL, -83 
CMP SIL, 94 
SETO SIL 
TEST DL, AL 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 27 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
SAHF  
OR RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
CMPXCHG EDI, ECX 
MOVZX DX, BL 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], -41 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDX] 
CMP AL, -75 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RAX], RDI 
JNBE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD BL, DL 
AND RSI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RSI] 
MOVZX EBX, DL 
OR RDX, -58 
CMOVBE EAX, EBX 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -7 # instrumentation
XCHG CL, AL 
BSWAP ESI 
SETNO AL 
OR CX, 50 
SUB CX, -120 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RCX 
SBB BL, 31 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
NEG DI 
CMOVNZ SI, SI 
CWD  
CMPXCHG DI, CX 
AND RDI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDI] 
XCHG DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
