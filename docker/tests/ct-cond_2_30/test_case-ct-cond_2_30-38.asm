.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -122 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RSI] 
CMOVNZ RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -88 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
SUB RCX, RBX 
CMOVNZ RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
INC AL 
CMOVL SI, AX 
AND RAX, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RAX] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -33 # instrumentation
ADC EAX, -839164968 
MUL RCX 
SBB BL, AL 
ADD DI, -67 
CMOVZ AX, DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 9 
CMOVNLE ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EBX 
CMP AL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
ADC RSI, 113 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
