.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RAX, RSI, 14 
AND RSI, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RAX] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RBX] 
CMOVL EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RBX] 
CMOVNB RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], SIL 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
SUB ECX, EBX 
SETNBE CL 
IMUL EDX 
XCHG RDX, RDI 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RCX] 
CBW  
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EDI 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
ADD DIL, -33 # instrumentation
CMOVNLE BX, DI 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], -107 
CMP ECX, EDI 
XOR CL, SIL 
CMOVO RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RSI] 
ADD SIL, 72 # instrumentation
SETNLE DIL 
MOVZX BX, CL 
CMP EAX, 9766827 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -3 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -50 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
NEG SIL 
CMOVS CX, AX 
OR DX, 12 
SUB RSI, RCX 
SUB DL, 21 
CMOVL EDX, EDX 
CMOVNLE RAX, RSI 
STD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
