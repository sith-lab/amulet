.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], -111 
TEST EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -78 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 83 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RAX] 
SBB RSI, -68 
OR BL, DL 
SETLE DL 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DIL 
CMOVL SI, DX 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
MOVSX DI, CL 
AND RAX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RAX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RBX] 
OR AL, -112 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 122 
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RAX 
AND RCX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RCX] 
SETLE CL 
SBB RAX, 1238567193 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RCX] 
XCHG RAX, RAX 
AND RBX, 99 
ADC AL, -119 
AND AX, -27930 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], ESI 
XOR RBX, -3 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], ESI 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
MOVSX BX, DL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDX] 
ADD RAX, 456002005 
CMOVNZ DI, CX 
CMOVNO RBX, RAX 
INC BX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
CMP SIL, -21 
SBB ESI, EDI 
ADD EBX, ESI 
SUB AX, 29557 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
