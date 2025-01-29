.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -467977640 
ADC EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDX] 
OR DL, 1 # instrumentation
IMUL RCX 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RCX] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
XCHG DI, SI 
CMOVBE ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RSI 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -105 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
