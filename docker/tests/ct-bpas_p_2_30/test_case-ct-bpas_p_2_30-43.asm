.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDX] 
BSWAP EAX 
ADC DIL, -31 
CMP BL, CL 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
IMUL SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], BX 
AND RCX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
IMUL EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -70 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
MUL RAX 
LEA EDI, qword ptr [RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EDI 
ADC ECX, 115 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
CMP SI, 8 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
IMUL SI, CX 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RAX] 
CMOVNLE RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
