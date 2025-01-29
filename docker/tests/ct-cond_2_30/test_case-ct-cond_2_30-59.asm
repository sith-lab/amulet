.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP ECX, EAX 
CMOVS RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -1601477115 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
MOVZX AX, BL 
IMUL RCX 
ADC EBX, 87 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RCX] 
MOVSX SI, DL 
ADC SIL, DL 
CMOVZ BX, DI 
MOVZX SI, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -54 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], ESI 
CMOVP SI, DX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
CMP EDX, EBX 
CMP CL, -68 
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
MOVZX RAX, DX 
CMOVLE AX, DI 
DEC DL 
LEA RDX, qword ptr [RAX + RDX] 
IMUL BX 
ADD DIL, 36 # instrumentation
CMOVNS EBX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
