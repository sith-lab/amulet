.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], -1873554935 
CMOVLE DI, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], 77 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
SUB BX, CX 
MOVSX ESI, DL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -1859630733 
CMOVZ EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RAX] 
OR DI, 0b1000000000000000 # instrumentation
BSF SI, DI 
CMOVNZ RDI, RCX 
AND DIL, AL 
ADD DIL, -14 # instrumentation
STC  
LAHF  
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
IMUL EDX, EDI, 115 
MOV BX, -25942 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RAX] 
TEST EAX, -1501882520 
XADD BL, CL 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
OR EAX, 381816673 
CMOVNS EDX, EDX 
XCHG RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], BL 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
ADD DL, BL 
MOVZX SI, AL 
TEST EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 53 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDI 
CMPXCHG EBX, EDX 
CMOVS BX, AX 
ADD EDI, 89 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
