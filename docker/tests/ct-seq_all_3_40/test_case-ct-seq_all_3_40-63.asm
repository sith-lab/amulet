.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -116 # instrumentation
SETNL DIL 
MOV ESI, EDI 
XADD RDX, RSI 
SUB EDX, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
CMOVLE RDX, RSI 
SETNBE DL 
ADD ECX, EDX 
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], -89 
ADC EAX, 9 
XADD RAX, RDI 
MUL AX 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX] 
ADD DIL, 23 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -24 # instrumentation
CMOVLE EDI, ESI 
AND SI, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RBX] 
XCHG EAX, ESI 
OR DL, 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDX] 
MOV EDX, 313602508 
CMOVNLE EDX, ECX 
TEST AX, 8219 
STD  
CMOVNB BX, AX 
OR RDX, RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
JMP .bb_main.2 
.bb_main.2:
NEG AL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
SETB BL 
XOR EAX, 1691246663 
AND RBX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DIL 
MOVSX SI, AL 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EDX 
CMOVNLE RCX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
