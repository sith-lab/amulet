.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -110 # instrumentation
CMOVNB DI, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 85 
IMUL BL 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -2 
MOVSX BX, CL 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 64 # instrumentation
CMOVNP RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RBX] 
ADC EAX, 957510594 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RDI 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], AX 
SUB ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -77 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 87 # instrumentation
LEA RSI, qword ptr [RAX + RDX] 
MOVZX SI, DIL 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], DX 
CMOVBE EAX, EDI 
CMOVNZ RAX, RBX 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -54 # instrumentation
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -58 # instrumentation
CMOVZ CX, DI 
ADC BX, 25 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RSI] 
CMOVNLE RDI, RAX 
JZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
STD  
ADD CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
