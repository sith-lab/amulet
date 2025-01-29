.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RAX, -1542227592 
AND RDX, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RDX] 
CMOVNL AX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 74 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], SIL 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -8 
AND RBX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], DI 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 70 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -110 
CMP AL, -91 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 70 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
