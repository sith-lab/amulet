.intel_syntax noprefix
LEA R14, [R14 + 12] # instrumentation
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DL, -128 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], -1 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], BX 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], -82 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], DL 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 67 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], -124 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], 104 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], -59 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], BL 
AND RBX, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
LEA R14, [R14 - 12] # instrumentation
