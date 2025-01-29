.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CDQ  
MOV RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], AX 
CMOVP RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDI] 
MOVZX SI, CL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RDX], -9 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RDX 
CMP DX, 52 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RBX] 
SUB ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
CMP RDX, -49 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DIL 
ADD SIL, DIL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
ADD AX, -9163 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
