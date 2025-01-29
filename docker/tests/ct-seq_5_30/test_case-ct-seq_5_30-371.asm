.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 101 # instrumentation
CMOVP EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EBX 
CWD  
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
CMOVNO DI, CX 
XCHG CL, DL 
CMP CL, BL 
IMUL EAX, ESI, -14 
ADD SIL, -6 # instrumentation
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOVZX RCX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], 109 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDI] 
IMUL AL 
ADD DIL, 121 # instrumentation
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XCHG ECX, ECX 
ADD AL, CL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RBX] 
STD  
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 34 # instrumentation
CMOVBE DX, CX 
IMUL AX, SI 
NEG SIL 
LEA EDX, qword ptr [RCX + RDI + 46376] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RSI] 
ADD DI, 45 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], DX 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -51 # instrumentation
CMOVNS BX, SI 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 54 
ADC RDX, RDX 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
