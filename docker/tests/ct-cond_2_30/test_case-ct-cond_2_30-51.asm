.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RCX] 
SUB BL, -61 
ADD DIL, BL 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
ADD SIL, 62 # instrumentation
CMOVS EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 123 
MOVZX EAX, BL 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], -116 
XCHG RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RDI] 
STC  
MOVZX RDI, BL 
MOVSX RSI, DIL 
ADC BX, DX 
MOV DIL, CL 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RSI] 
XCHG BX, AX 
IMUL RAX, RCX, -117 
AND RDX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDI] 
ADC EDX, EDI 
CMP AL, -103 
NEG EDI 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -56 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 103 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
