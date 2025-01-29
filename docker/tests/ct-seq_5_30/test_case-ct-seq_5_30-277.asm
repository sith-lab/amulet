.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], 21 
CMP SIL, 119 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -117 
AND RCX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RCX] 
JRCXZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 67 # instrumentation
CMOVNB RDX, RAX 
ADC AX, -169 
MOVZX EDI, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
CMOVNO AX, BX 
CMOVB RAX, RDX 
ADC EAX, -550536737 
CLC  
JRCXZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], EAX 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
SBB DIL, 61 
LEA BX, qword ptr [RDX + RBX] 
SAHF  
STD  
MOVZX CX, AL 
CMOVNLE AX, AX 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
CMOVZ EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -5 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RCX] 
SBB RAX, -1592857387 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
