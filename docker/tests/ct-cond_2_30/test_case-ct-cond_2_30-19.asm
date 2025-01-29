.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RDI, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RDX] 
SBB RAX, 494093961 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
MUL RDI 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 116 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 116 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -80 
AND RAX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EBX 
MUL AL 
DEC BX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 107 
CMOVS EAX, EBX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP DL, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RDX] 
SUB CX, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
SUB RDX, 22 
MUL ECX 
ADD SIL, -120 # instrumentation
XCHG AX, AX 
CMOVNBE BX, CX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 3767 
SUB AL, -123 
DEC CL 
SAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
