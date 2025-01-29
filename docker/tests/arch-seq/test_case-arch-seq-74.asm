.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, RSI 
DEC DIL 
XADD DX, AX 
MOV RDX, RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, -60 # instrumentation
SETNP DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], RCX 
ADD DIL, 98 # instrumentation
LAHF  
OR BX, CX 
ADD CX, -117 
SETBE CL 
CMOVNBE RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 122 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
MUL AL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], DX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 39 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
CMOVO EBX, EDX 
CMP DI, 83 
CMP CX, DX 
AND DL, DL 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RAX 
AND RCX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RCX] 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RSI] 
ADD DI, -19 
SBB EBX, EDI 
ADC AL, -85 
SETO DL 
CMP SIL, DIL 
SETNB BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], 77 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDX 
ADD SIL, -9 
JMP .bb_main.5 
.bb_main.5:
OR AL, 74 
OR SI, 0b1000000000000000 # instrumentation
BSF CX, SI 
AND EAX, 80 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
