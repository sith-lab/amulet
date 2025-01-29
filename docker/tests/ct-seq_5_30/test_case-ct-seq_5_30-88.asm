.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], ECX 
AND RAX, 0b1111111111111 # instrumentation
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -128 # instrumentation
CMOVB EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
BSWAP RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], BL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLC  
SBB RAX, 2124032387 
SUB SI, 13 
MUL DL 
CMC  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], SIL 
LOOP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 94 # instrumentation
CMOVP BX, AX 
DEC CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], 42 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 117 
CMOVNLE RDI, RDX 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD AL, DL 
AND RAX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RAX] 
CMOVNB ECX, EAX 
ADD EDX, EDX 
STC  
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RCX] 
CMOVP EAX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
