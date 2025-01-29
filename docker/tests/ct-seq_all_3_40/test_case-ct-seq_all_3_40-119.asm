.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP SIL, 67 
BSWAP RSI 
ADC ESI, -116 
ADC DI, -72 
AND RDX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDX] 
SETNZ DIL 
MOVSX EBX, CL 
OR AL, -5 
CMOVB BX, DI 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ESI 
AND RDI, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDI] 
CMOVL EDI, EDI 
ADC AL, 111 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 7 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RAX] 
BSWAP RDI 
TEST AX, 23523 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], 105 
SETNBE DIL 
SETNBE CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RBX] 
MOVZX RAX, AX 
TEST SIL, 58 
SETNBE BL 
IMUL CX, DI, 43 
INC RAX 
SUB BX, DX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -45 
OR EAX, EDX 
TEST SI, 25446 
MOV RDI, RDI 
CMOVB ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RBX] 
CMOVNL DX, CX 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], -98 
CMOVP RAX, RCX 
AND RCX, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
