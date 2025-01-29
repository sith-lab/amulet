.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDI 
AND RDX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDX] 
TEST AL, CL 
CMOVZ DX, AX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
AND DIL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
SETZ DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RAX] 
OR DI, 0b1000000000000000 # instrumentation
BSF SI, DI 
AND RAX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RAX] 
MOV AL, -59 
SUB RCX, RSI 
CMP RAX, 1803020600 
ADD AL, CL 
MOV EAX, 2048948508 
SBB RAX, 782562035 
CMOVS EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
LEA CX, qword ptr [RCX + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 27 
CMP DIL, -5 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
OR ESI, -120 
MOVSX BX, DL 
DEC SIL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -26 
SETNLE DIL 
SUB EDX, ECX 
TEST AL, 123 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
OR EAX, -471671662 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
SUB BL, 24 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -20 
CMOVBE RAX, RDX 
MOVSX RCX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
