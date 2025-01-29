.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 98 
LEA EBX, qword ptr [RCX + RAX + 14326] 
CMP RAX, 1607647822 
SAHF  
SUB AX, -15443 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], ECX 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -16 
XCHG ESI, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RCX] 
MOVSX DX, AL 
CMOVNP RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RCX] 
ADD ECX, 83 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 13 # instrumentation
CMOVNL RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RDI 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
CMOVS RDX, RDX 
SUB RAX, 753650543 
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
SUB DIL, -44 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RAX] 
CMOVL AX, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 57 
SBB CL, CL 
ADC BX, -79 
CLD  
ADD CL, BL 
XCHG DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
