.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RDX] 
STD  
CMOVO EDI, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RBX] 
CMOVLE AX, CX 
INC EDI 
TEST DIL, -43 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DIL 
SUB DL, -119 
XOR DI, AX 
LEA CX, qword ptr [RDI + RDI + 6450] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 1348122731 
CMP DIL, -117 
CMOVNLE RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDX] 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RCX] 
ADC EAX, 414224929 
INC RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
CMOVO EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDI] 
ADD SIL, -70 # instrumentation
XCHG RAX, RAX 
SBB AX, 26120 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
MOVZX CX, CL 
TEST RAX, 1687072134 
CMPXCHG SI, DX 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND AX, -21182 
CMOVL EDI, ESI 
MOVZX EBX, AL 
OR SI, 0b1000000000000000 # instrumentation
BSR BX, SI 
MOV ECX, EDX 
CMOVNZ RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RBX] 
ADD ESI, EDI 
CMOVZ CX, SI 
TEST RAX, 1091718520 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RAX] 
ADC AL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
