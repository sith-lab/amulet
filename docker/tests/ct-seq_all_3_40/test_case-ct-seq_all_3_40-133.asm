.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 124 # instrumentation
SETZ AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 110 
CMOVS EBX, ESI 
XADD RCX, RAX 
SETNO CL 
XCHG CX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], AX 
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DX 
AND RDX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDX] 
IMUL RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RSI 
OR RDX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], BX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RDI] 
CMOVL EDI, ECX 
CMOVNS DI, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDI] 
CMOVLE EBX, EDI 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
ADD DIL, -83 # instrumentation
CMOVNZ DX, DX 
AND RDX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDX] 
CMOVS RDI, RCX 
LEA RAX, qword ptr [RSI + RSI + 1494] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
ADD SIL, -107 # instrumentation
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR AL, 43 
AND EDX, 51 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], BL 
TEST RCX, 735799236 
CMOVO BX, CX 
ADC RDX, 48 
AND BL, AL 
AND RCX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], EAX 
MOVZX RDI, SIL 
SETB DL 
OR RAX, 1840784629 
CMOVO RSI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
