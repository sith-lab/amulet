.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB CX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], SIL 
CMOVNB DX, BX 
CMOVB ESI, EDI 
ADC CL, 15 
SBB DL, DIL 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], 36 
SUB CL, BL 
CMOVS RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -85 
CMP AL, 96 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EAX 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
INC BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], SIL 
ADD AX, 20906 
MOV AL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RBX 
MOVZX EDX, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -95 
ADC SIL, 3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
