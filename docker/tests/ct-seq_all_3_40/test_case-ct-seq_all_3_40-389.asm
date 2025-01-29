.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB DIL, AL 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -91 
CMOVL EDX, ESI 
MOV SIL, BL 
SBB AX, -31646 
AND RBX, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RBX] 
CMOVNL RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], ECX 
MOVZX EDI, AL 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 93 # instrumentation
MOVSX EAX, AL 
SETZ BL 
CMOVNBE EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], ECX 
SBB DIL, -36 
AND EAX, -471460817 
IMUL BL 
IMUL RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], SI 
CLC  
MOV EAX, 431009681 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], 42 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RCX 
XOR AL, 73 
CMOVNL RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
INC RCX 
ADC RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
MOV SI, -9634 
MOV RBX, 5340000026811022746 
CMPXCHG AL, BL 
CMOVNO SI, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
