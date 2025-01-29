.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DIL, 118 
TEST ECX, -1124012365 
SBB EDX, 42 
XADD BL, SIL 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RAX] 
SUB AX, CX 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
SBB BL, CL 
ADD RAX, 1871144955 
NOT RDX 
OR RDI, RDI 
OR DL, -25 
XOR EDX, -66 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], ECX 
AND AX, -13037 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RSI] 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -39 # instrumentation
CMOVB BX, SI 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
TEST EDX, -2094534440 
TEST DIL, DIL 
TEST AX, -8983 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
CMP AL, 27 
ADC CL, CL 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], -75 
ADC DL, AL 
DEC RDI 
ADD EAX, 251681283 
ADC AX, -8648 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
ADD SIL, 102 # instrumentation
ADC RDI, 77 
DEC BL 
OR AX, 14002 
JMP .bb_main.4 
.bb_main.4:
MOV AL, 78 
AND RDX, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RDX] 
OR AL, -67 
NEG ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RAX] 
SUB DI, 59 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
