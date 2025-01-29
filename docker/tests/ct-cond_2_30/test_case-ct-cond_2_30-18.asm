.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD BL, CL 
XCHG CL, DIL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
CMOVP EAX, EBX 
CMOVO ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
SBB EBX, -81 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RAX] 
IMUL RSI, RCX, 100 
AND RCX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RCX], 127 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RDX 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RAX] 
CMP BX, 57 
CMOVNP RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RDX] 
ADC RAX, 1324579762 
ADC AL, -100 
SBB CL, 116 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
SUB EDX, 77 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
