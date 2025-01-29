.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], BL 
CMP RBX, 88 
AND RDX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -21 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -113 
SUB RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RBX], 47 
AND RAX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RAX] 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RCX] 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], 75 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
