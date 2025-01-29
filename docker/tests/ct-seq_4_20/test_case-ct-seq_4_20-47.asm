.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 48 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], DI 
ADC AX, 29135 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 27 
NEG CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 119 
CDQ  
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -3 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], 83 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX RSI, CX 
IMUL EDI, EDX, 4 
ADC AX, -20468 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
ADD RAX, 1960542358 
SBB DIL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
