.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 121 # instrumentation
SETNP SIL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 71 
SETNLE CL 
ADD RBX, RCX 
NEG CX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], EDI 
TEST DI, BX 
IMUL RCX 
OR AL, -15 
AND RBX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RBX] 
ADD RCX, RSI 
OR DX, 1 
MOV SI, SI 
AND RSI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RSI] 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
TEST EAX, 662461582 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], 3 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
MOVZX RBX, SIL 
ADD AX, -306 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -28 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], BX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
ADD SIL, 48 # instrumentation
ADC AX, 20183 
SETNB DIL 
JMP .bb_main.2 
.bb_main.2:
XCHG CX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], CL 
CMOVNLE AX, CX 
XADD DX, AX 
SUB CL, -96 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -96 
CMOVL RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], DIL 
AND RCX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RDI] 
TEST AL, 64 
AND RCX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
