.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RSI] 
CMOVNB EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDI 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 79 # instrumentation
SETLE DL 
AND RDX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RDX] 
ADC SI, DI 
ADD RDI, RDI 
ADD EDI, 38 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 122 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 107 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP EAX, 1516502660 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RAX] 
LEA EDI, qword ptr [RAX + RBX + 38794] 
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RBX] 
MOVSX ESI, DI 
SETNS AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], SI 
OR RAX, -2039873928 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], 97 
JMP .bb_main.3 
.bb_main.3:
CMP RBX, -14 
NEG SIL 
NEG DL 
TEST AL, 12 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RCX] 
CMP EDX, 55 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 39 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RSI 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], -56 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 43 # instrumentation
SBB EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDI] 
SETNBE CL 
MOV AX, CX 
AND EDX, ESI 
MOVZX ECX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
