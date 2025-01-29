.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -59 # instrumentation
MOV DX, 9912 
CMOVNLE RCX, RCX 
XCHG AX, DX 
JNBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
CMP SIL, -19 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 40 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD DIL, 20 # instrumentation
MOV byte ptr [R14 + RSI], 95 
LAHF  
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -105 
CMOVS EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], 20 
CMOVNZ RAX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], DX 
JNL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
ADD SIL, -116 # instrumentation
CMOVL RBX, RDI 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RCX] 
SUB RAX, -1748979346 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
LEA CX, qword ptr [RBX] 
IMUL CX, SI, -18 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], BL 
XCHG DI, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
IMUL EDI, EDI, -101 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
