.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EAX, EDX 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
SUB RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RDI] 
OR BX, 0b1000000000000000 # instrumentation
BSF DI, BX 
INC BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
ADC AX, AX 
SBB ESI, 79 
XCHG CL, DL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RAX] 
CMP ECX, ESI 
MOVZX EAX, AL 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
SBB AX, BX 
CMOVNL CX, SI 
CLD  
ADD BL, -49 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], DI 
MOVSX DI, CL 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RSI] 
ADD DIL, 114 # instrumentation
CMOVBE AX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
