.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG BL, DIL 
JMP .bb_main.1 
.bb_main.1:
LEA EDX, qword ptr [RAX + RCX + 62898] 
IMUL AX, BX, -64 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RBX] 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -3 # instrumentation
ADC DL, -123 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX], 118 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
JNB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RAX] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RAX 
ADD SIL, 102 # instrumentation
ADC DIL, BL 
AND RCX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RCX] 
CMOVNLE DI, AX 
IMUL RSI 
XCHG DX, AX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
MOV DX, SI 
NEG AL 
NEG ESI 
CMOVNS RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 83 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RBX] 
JB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
SUB EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 121 
SUB EBX, 5 
SUB DX, 61 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
