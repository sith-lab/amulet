.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -117 # instrumentation
CMOVB EDI, ECX 
INC DL 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
CMOVO EDI, EDX 
SBB BX, DX 
SBB RDX, -16 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RBX] 
XCHG CL, DL 
AND RAX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RAX] 
IMUL EDX 
ADD DIL, 46 # instrumentation
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD SIL, 54 # instrumentation
CMOVL AX, word ptr [R14 + RCX] 
CMOVNP RCX, RAX 
LAHF  
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 87 # instrumentation
CMOVLE DX, BX 
ADC AL, 79 
CMP BL, 77 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RSI] 
CMP DI, CX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
ADD DX, -95 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DIL 
CLC  
AND RDI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDI] 
MOV AL, -110 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RAX 
ADD AL, CL 
IMUL RCX, RDI, -71 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
