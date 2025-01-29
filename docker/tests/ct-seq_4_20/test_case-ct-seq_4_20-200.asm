.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
CMOVB SI, DI 
CMOVNP DX, AX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], AX 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLC  
SUB CL, DIL 
MOV RAX, 3123809650527632055 
DEC DL 
ADC SIL, 46 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
INC AL 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
