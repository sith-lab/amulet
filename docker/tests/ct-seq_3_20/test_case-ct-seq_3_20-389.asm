.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 124 # instrumentation
ADC SI, DX 
CWD  
INC RSI 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RBX] 
ADC CX, SI 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RAX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
ADD AL, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], AX 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
