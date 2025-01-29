.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL CL 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RSI 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RSI] 
CMOVL BX, CX 
DEC SI 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], AX 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EDI 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI] 
OR AX, 0b1000000000000000 # instrumentation
BSF DI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
