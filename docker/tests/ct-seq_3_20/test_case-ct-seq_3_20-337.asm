.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], -55 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
CMOVB ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RAX], -98 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
NEG AL 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RSI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
OR DX, 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], -76 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
