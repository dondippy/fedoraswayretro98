# --- TEMA FEDORA 98 MODERN TEAL ---

# Definición de Colores (ANSI 256-color)
W98_BLUE_TITLE='\[\e[48;5;18;38;5;15m\]' # Azul barra de título / Texto blanco
W98_GRAY_BTN='\[\e[48;5;250;38;5;16m\]'  # Gris botón / Texto negro
W98_TEXT_WHITE='\[\e[38;5;15m\]'
RESET='\[\e[0m\]'

# 1. Banner de Bienvenida (Estilo Ventana de Fedora Atomic)
echo -e "\e[38;5;250m __________________________________________ "
echo -e " \e[48;5;18;38;5;15m  Fedora System Explorer                 \e[0m\e[38;5;250m|"
echo -e " |                                        |"
echo -e " |  \e[38;5;16mWelcome to Fedora Sway Atomic\e[0m         \e[38;5;250m|"
echo -e " |  \e[38;5;16mUser: $USER@$(hostname)\e[0m               \e[38;5;250m|"
echo -e " |________________________________________|\e[0m"
echo ""

# 2. Configuración del Prompt (PS1)
# Se cambia el icono de Windows () por el de Fedora ()
export PS1="${W98_BLUE_TITLE}  Fedora ${RESET}${W98_GRAY_BTN}  \w ${RESET} ${W98_TEXT_WHITE}❯${RESET} "

# 3. Alias Retro-Modernos
alias dir='ls -F --color=auto --group-directories-first'
alias cls='clear'
alias cd..='cd ..'
