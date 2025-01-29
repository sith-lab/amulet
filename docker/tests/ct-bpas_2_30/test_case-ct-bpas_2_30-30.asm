.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ECX 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], AX 
CMOVNS RCX, RDI 
ADD AL, -45 
CMP DIL, 25 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 69 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -114 
CMOVS DX, SI 
CMOVNLE EAX, EDX 
MOVZX SI, SIL 
ADC RAX, -1200183413 
CMOVNP RDX, RCX 
CMOVP EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RCX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
ADD DIL, -29 # instrumentation
CMOVNB RBX, RCX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 93 
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 78 
ADC EDI, -19 
CMOVP ECX, EAX 
CWD  
ADD DX, AX 
STD  
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
