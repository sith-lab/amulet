.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD SIL, -116 # instrumentation
CMOVNL BX, word ptr [R14 + RBX] 
LAHF  
SETNLE AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -64 
CMOVNP RCX, RDI 
NOT DI 
LOOP .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -77 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDX] 
SETZ BL 
CMOVNBE DI, DX 
IMUL RDX, RBX 
ADD DIL, 46 # instrumentation
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, -119 # instrumentation
ADC DX, 32 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], -86 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
OR AL, -4 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], SIL 
JMP .bb_main.3 
.bb_main.3:
CMP EDI, EDX 
SETNL BL 
NEG BX 
NOP  
AND RDI, -31 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
LEA EDX, qword ptr [RCX + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RSI] 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CLD  # instrumentation
XOR DIL, DIL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
TEST AX, -11050 
IMUL DI 
CMP AX, -18999 
AND RDI, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RDI] 
SBB RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RSI] 
OR AL, -12 
MOVSX CX, AL 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, -60 # instrumentation
LAHF  
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], BL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RSI], 62 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
