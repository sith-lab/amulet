.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], SIL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RCX 
XCHG DIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
XCHG AX, DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -82 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XCHG CL, DL 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDX] 
CMOVO EDX, EDI 
MOVZX ESI, SI 
MOV RDX, 8651873131867113425 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 120 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RDI], 125 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RBX 
ADD RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
