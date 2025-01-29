.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RDX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
CMOVNZ RCX, RCX 
CMOVNLE RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], 75 
CLD  
AND RBX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RBX] 
BSWAP EAX 
AND ESI, -128 
SETP DL 
XCHG DL, AL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RCX] 
XADD BL, CL 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CWD  
XCHG RSI, RAX 
OR EDX, 1 # instrumentation
LEA BX, qword ptr [RAX] 
AND RBX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RSI] 
MUL SI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RSI] 
CMOVNL RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDI] 
CMOVNB RDX, RSI 
OR RSI, -120 
XOR CL, 84 
CMOVNLE RDX, RCX 
SETZ BL 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
SBB AX, -27061 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RCX] 
XOR EDI, -59 
ADC AX, -1087 
AND RBX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
