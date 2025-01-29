.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], SIL 
CMP DIL, 76 
XADD ECX, EBX 
IMUL DX, DI 
ADC RDI, -98 
CMOVNB CX, DI 
CMOVBE DI, AX 
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], -59 
SETB AL 
NEG CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], 41 
NEG EBX 
CMP EAX, 1497208618 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RBX] 
CMOVNLE EDI, ECX 
AND RBX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RBX] 
XCHG RBX, RAX 
XOR BL, -90 
SETS CL 
NOT EBX 
TEST RBX, 1313852217 
SETBE BL 
SUB DX, -3 
CMOVL ESI, ESI 
AND ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RSI] 
AND EBX, EDX 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -30 
SBB DL, 67 
CMOVNO SI, DI 
IMUL EAX 
AND RAX, 1283761117 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], 61 
ADD DL, 110 
AND DL, 118 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
