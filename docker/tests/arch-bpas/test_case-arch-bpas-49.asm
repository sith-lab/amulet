.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -91 # instrumentation
DEC CL 
SETBE DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RCX], EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
CMOVLE AX, DX 
CMOVNS RDX, RDX 
NEG RAX 
AND EAX, 70293901 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA SI, qword ptr [RDI + RCX] 
LOOP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, 34 # instrumentation
SETNBE AL 
AND AX, -1148 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RSI] 
SBB ECX, -52 
AND RDI, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RDI] 
AND DIL, -124 
CMP DX, 125 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RDI 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 55 
ADC AX, 4642 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 96 # instrumentation
ADC EDI, -30 
XOR BX, 60 
SETNB AL 
CMP DL, 30 
TEST AX, 23341 
CMPXCHG CX, SI 
SETNBE CL 
MOV RSI, 8124923955734805359 
SUB DIL, 59 
SETL AL 
AND RDI, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -104 # instrumentation
CMOVBE SI, SI 
AND RDI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
AND EDX, -109 
XOR DL, CL 
ADC SIL, -66 
SETO DL 
SBB DI, 63 
MOV DIL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
