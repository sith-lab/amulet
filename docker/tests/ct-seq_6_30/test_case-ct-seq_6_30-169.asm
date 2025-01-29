.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RCX] 
MOVSX RDI, DI 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 43 # instrumentation
SBB ESI, EAX 
CMOVZ SI, DI 
CMOVS RSI, RSI 
SBB RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
BSWAP RSI 
IMUL ESI 
AND RBX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDI] 
SBB EAX, 1390829110 
STC  
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], AX 
LOOP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
IMUL DL 
AND RAX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RAX] 
ADD BL, DL 
XCHG DX, AX 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
SBB RBX, 123 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RBX] 
CMP BX, AX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EAX 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RCX] 
MOVZX ESI, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
