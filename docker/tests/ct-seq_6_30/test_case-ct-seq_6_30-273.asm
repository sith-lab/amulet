.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDX] 
CMP EBX, EDI 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], 29 
CMOVNS RAX, RAX 
CMOVB DI, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RDX] 
IMUL EBX, EDX, 4 
ADD DIL, -16 # instrumentation
XCHG BL, AL 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RAX] 
CMOVNZ RCX, RAX 
JMP .bb_main.3 
.bb_main.3:
MOV RDX, RSI 
ADD BL, AL 
OR DX, 0b1000000000000000 # instrumentation
BSF SI, DX 
CLC  
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DIL 
JO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 72 
INC AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RAX] 
ADC ESI, EDI 
MOVSX AX, AL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RDI] 
MOVZX RCX, BX 
JMP .bb_main.5 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], 75 
SUB EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
