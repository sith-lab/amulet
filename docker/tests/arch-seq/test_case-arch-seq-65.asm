.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -64 # instrumentation
SETNP BL 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EDI 
CMOVNS DI, DX 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
SUB RSI, RCX 
ADD SIL, SIL 
ADD EAX, 1946668144 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RCX] 
XOR RBX, -70 
MOVZX RBX, DL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RBX] 
IMUL CL 
ADD SIL, 11 # instrumentation
CMOVNS RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RDI] 
AND SIL, 69 
IMUL RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
MOV DL, BL 
XOR AL, -101 
CMOVO SI, DI 
OR EDI, EDX 
CMOVBE RCX, RDX 
OR AX, CX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], DL 
CMOVNZ ECX, EAX 
XCHG EDI, EAX 
CMP RSI, 58 
NEG BX 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], BL 
CMP AL, -118 
CMOVNL AX, SI 
SETL BL 
AND RDX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
