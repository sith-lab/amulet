.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -1 
CMOVP ESI, EDX 
MOVSX EDI, AX 
ADD SI, -90 
AND RDX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
CMOVNS EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
MUL EDI 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -1793552417 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
CMOVNZ ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RDX] 
LEA AX, qword ptr [RDI + RCX + 61190] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDX] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP EDX, -110 
AND RCX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 69 
CMOVO EDI, EDI 
CMOVNB AX, BX 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 79 
AND RSI, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
