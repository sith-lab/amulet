.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
TEST AL, -125 
MOVSX EDX, SIL 
CMP AX, 3436 
TEST RDI, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 38 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
CMPXCHG AL, DL 
SETNL BL 
ADD RCX, RDX 
SETNS BL 
AND RAX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RSI] 
OR EDX, 1 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB AX, -1385 
ADC ESI, EAX 
ADD AL, -31 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], RCX 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 30 
AND RBX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RBX] 
AND EAX, 480679471 
CMOVZ RDI, RSI 
NEG CX 
TEST BX, AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDI] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XADD RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDI] 
CMOVS RBX, RAX 
DEC RBX 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -126 
CMOVL EDX, EBX 
SBB DIL, 99 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDI] 
CMPXCHG EDX, EAX 
SBB DX, DX 
MUL EDI 
ADD SIL, -128 # instrumentation
SETLE DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
