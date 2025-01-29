.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EDI, 1292992510 
STC  
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RCX] 
MOV SI, 20290 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDX] 
ADD RAX, -422758651 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 2 
IMUL RAX, RSI, 113 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
