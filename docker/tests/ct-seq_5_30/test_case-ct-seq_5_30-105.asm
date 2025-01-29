.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -4 # instrumentation
CMOVNO RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], SIL 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
CMOVNL EDI, ESI 
ADD CL, DIL 
SBB EAX, -1970163971 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 10 
MUL BL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RDI 
OR SI, 0b1000000000000000 # instrumentation
BSF CX, SI 
INC CX 
CMOVS ESI, EBX 
MOV RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
MUL ECX 
JMP .bb_main.3 
.bb_main.3:
INC CL 
MOVSX EDI, CX 
ADD BX, AX 
XCHG RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDI] 
CMOVNZ CX, DI 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RAX] 
SUB AL, 126 
AND RCX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], 64 
CMOVNBE RBX, RCX 
AND RAX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
ADD RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
