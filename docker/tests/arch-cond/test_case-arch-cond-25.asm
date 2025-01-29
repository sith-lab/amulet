.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -31 # instrumentation
CMOVO SI, DX 
SUB ESI, 40 
SUB BX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], 103 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], 21 
AND RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], EDX 
SETNS AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], AL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -9 # instrumentation
SETO DIL 
ADC AL, -46 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RBX], DX 
SBB RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RDX] 
CMOVS DI, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RSI 
CLD  
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
MOVZX ESI, AL 
CMOVNBE AX, BX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR EDI, EAX 
CMC  
ADC RAX, 1253763132 
IMUL AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 115 
MOVSX RDX, CX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], 73 
IMUL DL 
SUB RDI, 29 
XCHG RBX, RAX 
AND ESI, 84 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RDX] 
AND EAX, -892753226 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
