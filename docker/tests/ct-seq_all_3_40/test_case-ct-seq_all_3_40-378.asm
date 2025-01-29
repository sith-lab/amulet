.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RBX] 
LEA EBX, qword ptr [RAX] 
XCHG CX, AX 
CMOVBE ESI, EDI 
IMUL CL 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], AL 
SUB SI, 109 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RDX] 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], AX 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 45 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RCX] 
CBW  
OR CL, DL 
SETNS DIL 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
TEST RAX, 1736501297 
AND RSI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RSI] 
SETNB CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], ESI 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RAX] 
CMOVNO EDX, EDI 
OR RAX, -1356522006 
CMP AL, -62 
LAHF  
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RCX] 
XADD RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
ADD SIL, -104 # instrumentation
SETBE AL 
CMOVNL DX, DI 
IMUL RBX 
ADD SIL, -123 
SETNBE AL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
