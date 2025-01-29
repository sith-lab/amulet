.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 20 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], BX 
AND RCX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RCX] 
CMOVNBE EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
SBB AX, 27 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV EBX, -1976442122 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
CMP AL, 38 
AND RSI, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
XCHG ECX, ECX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -85 # instrumentation
CMOVNB EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RCX] 
ADD AL, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
