.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -96 # instrumentation
ADC EAX, -938815657 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RAX] 
MOV EBX, EAX 
NEG ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 574075453 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
CMOVBE EDI, ESI 
CMOVP RDI, RDI 
CMP SIL, -121 
IMUL RDX, RCX, 20 
ADD SIL, 86 # instrumentation
CMOVLE CX, SI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RDI] 
SUB DI, AX 
CMOVNP RDI, RSI 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG EDX, EDI 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -8 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RBX] 
ADD ESI, 46 
SBB DL, -14 
MOVSX DI, SIL 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], BX 
CMOVNB ECX, ECX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RSI] 
MOV EDX, ECX 
CMP CL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
