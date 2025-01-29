.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 71 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], BL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], -42 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -101 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], SIL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], BL 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
SUB AX, 23634 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RSI] 
IMUL ECX, EDI, 64 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
