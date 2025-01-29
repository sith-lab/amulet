.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RCX] 
ADC SIL, 66 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDX] 
MOV RAX, 2294280558354200979 
XCHG DL, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EDI 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDX] 
CMOVNS ECX, EAX 
CMOVNLE ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RSI] 
MUL RDX 
ADC RDX, 67 
AND RAX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 31 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], -61 
MOVZX RAX, DIL 
CMP CL, DL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -52 
ADC DL, -1 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EBX 
CMOVNS EDI, EDX 
LEA RDX, qword ptr [RDX + RDX + 49733] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EDX 
ADD DIL, -90 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -20 
AND RAX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RAX], 32 
CMP RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
