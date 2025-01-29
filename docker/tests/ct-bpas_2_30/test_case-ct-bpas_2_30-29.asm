.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV BL, -12 
SUB BL, 5 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
CMOVNBE RDI, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RDI] 
SBB RSI, RAX 
CMOVNS DX, DI 
ADC EAX, -90 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
CMOVNP EDX, EDX 
ADC BX, DI 
DEC CX 
IMUL SI 
ADD DIL, 16 # instrumentation
CMOVNL BX, SI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
INC CL 
CMP RAX, RDI 
ADD EDI, 51 
MOV DX, 3107 
AND RDI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDI] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RCX 
SUB EBX, ECX 
CMP SIL, -47 
NEG DL 
IMUL RDI, RBX 
MOVSX ESI, CL 
IMUL EDX, ESI, 104 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
