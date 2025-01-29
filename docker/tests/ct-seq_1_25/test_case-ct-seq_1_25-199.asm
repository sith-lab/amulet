.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DIL 
SBB EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RBX] 
CMOVNB DX, SI 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDI] 
SBB RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], DX 
CMOVNO SI, DX 
ADD CX, AX 
AND RAX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RAX] 
NEG CX 
CMP DIL, 57 
IMUL DX 
AND RCX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EDX 
CMOVS DX, AX 
MOVSX EDI, DI 
AND RCX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
