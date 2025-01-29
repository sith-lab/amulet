.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RBX] 
IMUL DIL 
SUB CL, CL 
CMOVNZ RCX, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RCX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
MOVSX RDX, CX 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDI] 
NEG RCX 
SUB AX, -10753 
AND RDX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 104 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], ECX 
CMP AX, DX 
SUB BX, CX 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EDI 
CMP AL, -72 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
