.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], SIL 
AND RSI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDI] 
SBB EAX, ECX 
MOV ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 87 
AND RBX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -97 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], DX 
CMOVO EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
