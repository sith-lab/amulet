.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -109 # instrumentation
SETNLE CL 
SETNP DIL 
AND RCX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RCX] 
MOVSX RDI, DL 
ADD DX, CX 
CMOVBE RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 21 
ADC EDI, -78 
CMOVNL CX, DX 
ADC EAX, -925824036 
CMOVNB EDI, EDI 
CMOVNS RBX, RDI 
MOVSX AX, AL 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], 69 
SETNO BL 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 70 # instrumentation
CMOVNLE BX, DI 
CMOVBE RAX, RDX 
TEST EDX, EDI 
CMOVNB SI, DI 
SETL DL 
ADD ESI, EBX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -20 # instrumentation
SBB DIL, DIL 
SUB CL, DL 
CMOVNP ECX, EDI 
CWD  
XOR DL, -83 
SETNBE DIL 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EAX 
AND AX, 28917 
CMOVNP ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], 75 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
CMOVNP ESI, EAX 
OR CX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
