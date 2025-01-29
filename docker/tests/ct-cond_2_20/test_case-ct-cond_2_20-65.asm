.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 18 # instrumentation
CMOVP EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], DI 
CWD  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
MUL RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RBX] 
SAHF  
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DIL 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -86 
CMOVP SI, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], -11 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
