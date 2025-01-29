.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 74 # instrumentation
CMOVBE DI, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDX], 99 
ADC EDX, -13 
CMOVNO DX, BX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
SUB SIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RSI] 
SBB CL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 104 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 124 
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
SUB EDX, 87 
DEC ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
MOVSX ESI, BL 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RAX] 
SUB ECX, EAX 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDI 
ADD DIL, 102 # instrumentation
CMOVS EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DIL 
AND RDI, 0b1111111111111 # instrumentation
ADD SIL, -101 # instrumentation
MOVZX EAX, word ptr [R14 + RDI] 
LAHF  
IMUL ESI, ESI, 114 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
