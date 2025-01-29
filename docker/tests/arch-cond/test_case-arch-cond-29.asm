.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 71 # instrumentation
SBB EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RDX] 
AND CL, BL 
SETNL DL 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
ADD SIL, -116 # instrumentation
CMOVNP DI, DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
ADD AX, -2097 
ADC DIL, 108 
MOVSX EAX, SI 
MOVSX RCX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], BL 
ADD SIL, 25 
LOOP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -23 # instrumentation
CMOVNLE RSI, RAX 
CMOVNS EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DIL 
JO .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD DIL, 82 # instrumentation
SBB RSI, RDX 
SETNB BL 
MUL RDI 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DIL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
ADD SIL, 84 # instrumentation
CMOVLE AX, CX 
BSWAP ESI 
SBB RSI, RDI 
LEA AX, qword ptr [RSI + RBX + 24307] 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], SIL 
SETNP AL 
XOR EAX, 1550649594 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EBX 
CMOVNBE ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
MUL RCX 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDX], -70 
ADD SIL, 12 # instrumentation
JNZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RBX] 
SBB AX, -17520 
CMP SIL, -9 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
