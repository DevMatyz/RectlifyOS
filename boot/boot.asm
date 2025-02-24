; boot.asm - prosty bootloader w Assembly (NASM)
bits 16             ; Tryb 16-bitowy (tryb rzeczywisty)
org 0x7C00          ; Adres, pod którym BIOS ładuje bootloader

start:
    mov ah, 0x0E    ; Funkcja BIOS do wyświetlenia znaku
    mov al, 'H'     ; Znak do wyświetlenia
    int 0x10        ; Przerwanie BIOS do wywołania funkcji
    mov al, 'e'
    int 0x10
    mov al, 'l'
    int 0x10
    int 0x10        ; Wyświetlenie drugiego 'l'
    mov al, 'o'
    int 0x10
    mov al, ','
    int 0x10
    mov al, ' '
    int 0x10
    mov al, 'W'
    int 0x10
    mov al, 'o'
    int 0x10
    mov al, 'r'
    int 0x10
    mov al, 'l'
    int 0x10
    mov al, 'd'
    int 0x10
    mov al, '!'
    int 0x10

    hlt             ; Zatrzymaj procesor

times 510-($-$$) db 0   ; Wypełnij resztę sektora zerami
dw 0xAA55               ; Sygnatura bootloadera (BIOS wymaga tego na końcu)
