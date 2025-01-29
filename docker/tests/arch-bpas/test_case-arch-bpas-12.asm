.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDX] 
DEC CL 
MOV DIL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], AX 
CMOVNS RCX, RBX 
ADC EAX, -9 
SUB EAX, EDI 
MOV BL, BL 
MOV EAX, ECX 
XADD DIL, CL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], RDI 
MOVSX RDI, CX 
CMOVNZ EDI, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RDX] 
ADC AX, 25998 
TEST AX, -11209 
CMOVNP RDI, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
CMOVB ECX, ESI 
SETL DL 
OR AL, 30 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RDX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
OR DI, AX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RBX] 
AND RBX, RDX 
XADD DIL, SIL 
SETZ CL 
OR DI, CX 
IMUL CL 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], 281450225 
CMOVNP DI, BX 
CMOVLE ESI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
