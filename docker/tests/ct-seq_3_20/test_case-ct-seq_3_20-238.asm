.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 109 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], 3 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
SBB EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], BL 
ADC SI, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RAX] 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 92 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX], 120 
CMP CL, 16 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], CX 
ADD CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
