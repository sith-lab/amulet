.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 47 # instrumentation
CMOVLE RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
CMOVS DI, DI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RBX] 
JNB .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RSI 
OR DL, 1 # instrumentation
SBB EAX, 1545736549 
AND RSI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RBX] 
ADD SIL, -46 # instrumentation
CMOVLE ECX, ECX 
JMP .bb_main.3 
.bb_main.3:
IMUL RCX, RDI, -90 
SUB CL, AL 
MOVZX EAX, SIL 
CMOVNLE BX, AX 
CMOVO RDX, RSI 
CMOVNZ CX, DX 
JNL .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
MOV BL, 9 
INC RDX 
CMOVNL EDI, EDX 
INC SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 37 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], -1215783815 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], CX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -87 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
