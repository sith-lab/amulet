.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC BL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RAX] 
ADC EBX, ECX 
SETNBE DL 
MOV ECX, EBX 
AND SIL, 29 
ADD EAX, -1804332182 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RCX] 
SETNZ AL 
TEST RAX, 800587321 
AND RCX, -89 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], BX 
SETBE BL 
MUL RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -31 
CMOVNP DI, SI 
NOT RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], AL 
SUB AX, -30971 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], DI 
DEC RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], -113 
SBB DIL, -110 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
STC  
AND RCX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDI], 127 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], 88 
CMPXCHG CX, DI 
XOR RAX, 2042731812 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDI] 
CMP SIL, 123 
AND EAX, -593690576 
AND RDI, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], ESI 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 37 
AND RCX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
