.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 113 # instrumentation
SBB BL, 27 
SBB DL, -17 
AND RDX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RSI 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RAX 
ADC RSI, RDI 
OR AL, -62 
SUB DIL, -65 
AND RDX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RDX] 
XCHG CX, AX 
CMP DIL, -69 
CBW  
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
ADD DIL, -100 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RCX] 
SBB AL, 38 
AND RAX, 0b1111111111111 # instrumentation
XOR DIL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], 1704730736 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], -17 
MOVZX RCX, AX 
NEG AL 
CMOVNLE RDX, RDX 
CMOVNL EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RAX] 
XCHG BX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
ADC RAX, 21870463 
CMOVNL ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 77 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], SIL 
CMP RAX, 1346650930 
CMOVO EAX, EBX 
TEST DIL, 66 
CMOVLE AX, AX 
TEST DX, 25974 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
STC  
XOR EDX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
