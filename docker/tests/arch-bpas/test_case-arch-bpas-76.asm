.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
SETNO DL 
JMP .bb_main.1 
.bb_main.1:
MOVZX RAX, AL 
SUB RAX, -994666277 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
OR AX, -190 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
ADD SIL, 2 # instrumentation
SETLE AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
CWDE  
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], CX 
JL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD EDI, -83 
STD  
SETNB SIL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
CMP DIL, AL 
CMP RAX, -282005492 
CMOVNBE DX, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 0 
JMP .bb_main.4 
.bb_main.4:
XOR AX, -17099 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX] 
NOT DL 
TEST EDI, 1128085672 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
ADC BX, CX 
JMP .bb_main.5 
.bb_main.5:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RAX] 
NEG AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RDX] 
XCHG CX, DI 
XCHG EDX, EBX 
OR AL, -99 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
SUB AX, -1174 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], CX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
