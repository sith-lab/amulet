.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AX, -17405 
MOV EBX, 2093836732 
SETZ DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
MOVSX RAX, SIL 
TEST EAX, EBX 
OR AL, 22 
TEST DL, AL 
SUB EAX, 23326480 
XADD RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
XOR DIL, byte ptr [R14 + RSI] 
SETNS DL 
AND RAX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], DL 
AND RDI, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
ADD EAX, -1377860584 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RSI] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RDI, RSI 
SETLE SIL 
CMOVNL ESI, ESI 
TEST DX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], DL 
DEC ECX 
MOVSX DX, BL 
IMUL AX 
CMP DI, -114 
SETO DL 
SBB RAX, -496304225 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], DX 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDX] 
SUB AX, DI 
NOT BL 
SETNO DL 
OR DL, -103 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], 6 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RBX] 
XCHG EDI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
