.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RCX] 
CMP DX, 85 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], 81 
AND RDX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RBX] 
MOVZX RSI, DI 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVSX ESI, BL 
NEG RDI 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RCX] 
CWD  
CMP EAX, -17 
CMP DIL, 20 
LEA EAX, qword ptr [RDI + RSI + 7254] 
CMOVS RBX, RAX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDX 
DEC RDX 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
ADD SIL, 86 # instrumentation
CMOVNS EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EDX 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX] 
CMOVNO EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
