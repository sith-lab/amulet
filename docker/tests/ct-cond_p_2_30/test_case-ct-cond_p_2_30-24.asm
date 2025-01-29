.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDI] 
SUB AX, -31920 
INC DIL 
MOVSX CX, CL 
SUB AL, -105 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 77069853 
CMOVO EDX, ECX 
CMOVNO EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RDX] 
CMP RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 75 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], CX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 2106037186 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], 97 
MOV RDI, -3425440040695338792 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -85 
CMOVNZ CX, AX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -118 # instrumentation
ADC DL, AL 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
OR DX, 0b1000000000000000 # instrumentation
BSF SI, DX 
IMUL EBX, ECX, -73 
IMUL DIL 
SUB CL, CL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
