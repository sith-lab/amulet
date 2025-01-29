.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DX, -91 
DEC RDX 
MOVSX EAX, BX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RDI 
MOV BX, 26848 
JMP .bb_main.1 
.bb_main.1:
IMUL BX, DX 
MOVSX RDI, DX 
XCHG DL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 123 
JLE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
CMP DX, SI 
SUB EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -82 # instrumentation
CMOVO ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -122 
SUB AL, 108 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDI 
XCHG CX, SI 
IMUL BL 
LOOP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
CMP SIL, CL 
XCHG EDI, EBX 
CMOVNZ RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDI] 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MOV AL, -13 
AND RDX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDX] 
SBB SIL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
