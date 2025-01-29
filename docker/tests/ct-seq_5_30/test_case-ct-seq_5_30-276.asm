.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
ADC BL, CL 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
ADD RAX, 553600703 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RSI], -58 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDI] 
ADD BL, DIL 
LEA SI, qword ptr [RDI] 
JMP .bb_main.2 
.bb_main.2:
SUB RBX, 109 
CMOVS ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RCX] 
CMP SIL, 24 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
MOV BX, -30052 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
ADC EAX, 66306240 
ADC CL, -55 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 91 # instrumentation
CMOVB EDX, EDX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
CMOVS RCX, RSI 
ADD RAX, -553856470 
DEC RDI 
ADC RAX, -1796398754 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
ADD CL, -66 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
