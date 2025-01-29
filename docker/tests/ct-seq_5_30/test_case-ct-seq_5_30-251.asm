.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AX, 27386 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], CX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDI] 
LEA RSI, qword ptr [RCX + RDI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RDX] 
MOVZX EDI, DX 
ADC RAX, -651089853 
IMUL ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
CMOVO EAX, ECX 
CMOVNB EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], SIL 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RBX] 
SUB ECX, 117 
CMP RCX, 63 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], DL 
CMOVBE RAX, RDI 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD AX, -29026 
SBB RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], DX 
IMUL EDX, ESI, -35 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
CMP CL, -15 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
