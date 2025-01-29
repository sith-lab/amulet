.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 75 # instrumentation
CMOVNO EDX, EAX 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX], 109 
MOVZX EBX, BX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 58 
CMP ECX, 50 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], -114 
AND RSI, 0b1111111111111 # instrumentation
IMUL CX 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], SIL 
MUL RDX 
ADD DIL, -29 # instrumentation
CMOVL EBX, ESI 
MOV BL, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -65 
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -105 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], DX 
CMOVO BX, SI 
AND RDI, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RDI] 
ADC RAX, -1507610185 
CMP DIL, 81 
ADC ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
