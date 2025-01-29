.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 49 # instrumentation
CMOVNLE RDX, RBX 
CMOVB RDX, RDI 
CMOVL EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RDX] 
INC AL 
JNB .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -16 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
SUB AL, 48 
ADC DX, 7 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 19 
AND RAX, 0b1111111111111 # instrumentation
ADD SIL, -21 # instrumentation
CMOVNP EAX, dword ptr [R14 + RAX] 
LAHF  
CMOVO SI, AX 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], SIL 
ADC AL, -98 
AND RBX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RBX] 
ADC EAX, -252942873 
JMP .bb_main.4 
.bb_main.4:
IMUL RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], CX 
SUB BX, -37 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RBX] 
CMOVS EAX, ESI 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 61 # instrumentation
CMOVS RSI, RDX 
CMOVNBE EBX, ESI 
ADC BL, AL 
NEG BL 
CMOVO EBX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
