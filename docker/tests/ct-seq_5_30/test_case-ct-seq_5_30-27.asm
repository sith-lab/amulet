.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AL, 48 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], AL 
CMOVL EBX, ESI 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
LEA AX, qword ptr [RDI + RBX + 52124] 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], BL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
CMOVO EBX, EDI 
CMP EBX, EBX 
MOVZX ECX, AL 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RDI] 
MOV RCX, 5197433390236684292 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
CMOVBE EDI, EBX 
JZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -95 # instrumentation
CMOVNZ RBX, RSI 
MOVZX SI, DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], CX 
ADC CX, DI 
ADC CX, -46 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RAX] 
DEC DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RCX] 
CMOVZ EDI, EDX 
CMOVNLE SI, DX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], AL 
CMP EAX, -228723658 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
