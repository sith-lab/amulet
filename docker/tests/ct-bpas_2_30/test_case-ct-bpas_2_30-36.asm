.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
XCHG EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], DI 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RSI] 
MUL RCX 
IMUL EAX, EDX, -58 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
SUB RSI, RCX 
CMOVB RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
XCHG SI, AX 
MOV RCX, -32701065066225379 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
MOVSX DI, BL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RBX] 
BSWAP RCX 
MOVSX BX, CL 
CMOVP ESI, EAX 
CMP EDX, -93 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
ADD CL, 54 
ADD EDI, -114 
CBW  
MOV ECX, EDX 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
MOVZX DX, BL 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
