.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RAX, -832909021 
SUB AL, 110 
AND RBX, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RBX] 
SETO CL 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], 26 
CMOVNZ SI, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], 126 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], DX 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND AL, DL 
CMOVL RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -109 
ADC RAX, 206673579 
XOR AL, 87 
SUB BL, 113 
SUB RAX, 1048622940 
CWD  
MOV AL, AL 
CMOVNP RAX, RDI 
ADC RAX, RDX 
SETZ SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], AL 
OR RSI, RDX 
DEC ECX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], ESI 
CMP ECX, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDX 
CMOVNP EBX, EDX 
XOR DL, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], DIL 
SBB AX, -4591 
NEG DI 
OR AL, 33 
CMPXCHG EAX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RAX] 
SUB EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDX] 
INC BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
