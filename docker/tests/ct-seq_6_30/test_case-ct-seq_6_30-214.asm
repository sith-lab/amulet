.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ECX 
AND RCX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RBX] 
MOV SIL, 99 
ADC RAX, -128 
JMP .bb_main.1 
.bb_main.1:
DEC CX 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
MOV EDX, -843111248 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RCX 
MOVZX BX, DL 
ADC CL, -58 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MOVZX EDX, DIL 
ADD EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI], -116 
JMP .bb_main.4 
.bb_main.4:
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RAX] 
ADC DIL, 96 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
