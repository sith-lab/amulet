.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], AX 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EBX 
DEC BX 
IMUL RDI, RSI, -114 
ADD AX, -16047 
LEA RBX, qword ptr [RCX] 
IMUL CX, DX 
LOOP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -208957640 
LEA RDI, qword ptr [RAX + RCX + 3583] 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -44 
MOV EDX, 1763581339 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 99 # instrumentation
CMOVNP EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDI 
CMOVL ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], -16 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 96 # instrumentation
SBB RAX, -938242323 
CMOVL EDI, EDX 
MUL RDX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RBX] 
CMOVO SI, SI 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 2090583436 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RSI] 
XCHG AL, DL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], ECX 
SBB EBX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
