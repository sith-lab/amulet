.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AX, -13192 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RCX] 
TEST DI, DX 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX], 97 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RAX] 
DEC CX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -59 # instrumentation
ADC DIL, SIL 
MOVSX DX, SIL 
IMUL RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], EAX 
XOR DIL, -90 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
IMUL EDX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], AX 
CMOVNP ECX, EDX 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RBX] 
OR DI, AX 
DEC CL 
NEG DL 
MOV RSI, -4876274375225990925 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
AND RBX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RBX] 
TEST AX, 18735 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 111 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EAX 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 50 # instrumentation
CMOVNS RBX, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RAX] 
ADD CL, DL 
MUL ECX 
ADD DIL, -122 # instrumentation
SETNL CL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
XOR EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDI] 
SETNO CL 
CMOVL ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
