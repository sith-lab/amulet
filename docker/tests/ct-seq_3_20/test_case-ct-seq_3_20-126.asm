.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ESI 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MUL SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
CMOVNBE RSI, RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DIL 
CMOVS EDX, EBX 
JMP .bb_main.2 
.bb_main.2:
SAHF  
AND RBX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RBX] 
CWD  
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RCX] 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
