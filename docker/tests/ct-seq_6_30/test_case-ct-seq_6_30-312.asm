.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 50 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RCX] 
CMOVBE RBX, RBX 
JNL .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
IMUL RDI, RDI, 107 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
CMOVZ DX, SI 
AND RSI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDX], -73 
ADD DIL, -40 # instrumentation
JNBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
DEC RDX 
NEG CL 
SUB AL, 82 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
MOVZX ESI, SIL 
MOVZX EAX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ESI 
ADC ESI, 37 
CMP EBX, -30 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
CMOVBE RCX, RDX 
MUL RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDI] 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 51 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RSI 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], -103 
MOVZX RAX, SI 
CMOVZ CX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
