.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP AX, 8920 
XOR CL, BL 
SETNB DL 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], ESI 
XADD DL, AL 
NEG DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RAX] 
BSWAP ECX 
SETB DIL 
XCHG EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
OR DX, -6 
CMOVNB RBX, RDI 
OR ECX, -79 
JMP .bb_main.1 
.bb_main.1:
MOVZX SI, CL 
XCHG RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RBX] 
INC BL 
CMOVNS ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RSI 
XOR RDX, -11 
CMP EDI, -94 
XOR AL, -69 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
CMOVNLE RCX, RDX 
NEG RDI 
IMUL RDX, RAX, -54 
ADD SIL, -81 # instrumentation
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -95 # instrumentation
CMOVL DI, CX 
MOVSX RSI, CX 
CMOVNLE RDI, RBX 
SETNB BL 
SUB EAX, 1618617295 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -90 
CMOVNZ ESI, EDI 
CMP EAX, 628590041 
AND RSI, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
