.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SI, 103 
XOR DI, -95 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -13233 
XOR ESI, 71 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RCX 
ADC CL, SIL 
CMOVO DX, DI 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 74 
AND RAX, -1276477716 
SBB EBX, -9 
AND RCX, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RCX] 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RBX 
MOVZX AX, AL 
CMOVNS EDI, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RCX 
SETP CL 
XCHG AL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 67 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RSI] 
SETLE DIL 
TEST BX, -26322 
MOVSX ESI, SI 
AND RSI, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], EBX 
MOVSX SI, BL 
CMPXCHG CL, DIL 
XOR AL, 113 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP RAX, 94988297 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 105 
IMUL RBX, RSI, 14 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], DIL 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], -11715 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RBX] 
DEC AL 
ADD EBX, 123 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RCX] 
NEG SIL 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 103 
MOVZX EDX, DIL 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
