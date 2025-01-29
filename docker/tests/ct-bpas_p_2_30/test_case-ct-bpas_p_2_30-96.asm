.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
CWDE  
MOVZX BX, BL 
ADD DL, AL 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EDI 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -76 
INC ECX 
CMOVZ RCX, RDX 
INC SIL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDI] 
SUB AX, -11787 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -58 
SBB BL, -61 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
ADC DL, AL 
IMUL EDI, EAX 
IMUL EDI, ECX 
CMOVNB RDX, RDX 
MUL ECX 
MOV BL, 43 
SUB RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RDI] 
BSWAP RAX 
CMOVNLE RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 66 
CMOVNO ECX, EDX 
MUL EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
