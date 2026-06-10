# ============================================================================
#  Dockerfile — "receta" para construir la imagen del curso
# ============================================================================
#  Un Dockerfile es un archivo de texto con instrucciones paso a paso que
#  Docker (o Codespaces) lee de arriba hacia abajo para fabricar una
#  "imagen". Una imagen es como un molde congelado de un sistema Linux
#  listo para usar; cada vez que abres el Codespace, se crea un
#  "contenedor" a partir de ese molde.
#
#  Analogía: la imagen es el PLANO, el contenedor es la CASA construida
#  con ese plano. Puedes construir muchas casas iguales a partir de un
#  solo plano, y si destruyes una casa el plano sigue intacto.
#
#  Cada instrucción (FROM, ENV, RUN...) crea una "capa". Docker guarda
#  esas capas en caché: si no cambias las primeras líneas, no las
#  reconstruye y el siguiente build es casi instantáneo.
# ============================================================================


# ----------------------------------------------------------------------------
# FROM: imagen base sobre la que vamos a construir
# ----------------------------------------------------------------------------
# En lugar de partir de cero, partimos de la imagen oficial de Kali Linux
# en su versión "rolling" (actualización continua, siempre al día).
# Todo lo que instalemos más abajo se apila ENCIMA de esta base.
FROM kalilinux/kali-rolling:latest 
#Sets the base operating system image to Kali Linux


# ----------------------------------------------------------------------------
# ENV: variables de entorno permanentes dentro del contenedor
# ----------------------------------------------------------------------------
# Las variables de entorno son "ajustes globales" que cualquier programa
# del sistema puede leer. Se escriben en MAYÚSCULAS por convención.
#
#   DEBIAN_FRONTEND=noninteractive
#     Le dice al instalador de paquetes (apt) "no me hagas preguntas
#     interactivas, asume respuestas por defecto". Sin esto, algunos
#     paquetes pausarían el build esperando que pulsemos una tecla y se
#     quedaría colgado para siempre (porque no hay nadie mirando).
#
#   LANG / LC_ALL=es_ES.UTF-8
#     Configuran idioma y codificación de caracteres. UTF-8 es lo que
#     permite que acentos, ñ, €, emojis, etc. se muestren bien.
#
#   TERM=xterm-256color
#     Le indica a los programas que la terminal admite 256 colores, para
#     que vim, nvim, htop, etc. se vean con todos sus colores.
#
# La barra invertida "\" al final de cada línea significa "esto continúa
# en la línea siguiente". Solo es para legibilidad.
ENV DEBIAN_FRONTEND=noninteractive \ 
# Sets a global environment variable to disable interactive prompts
    LANG=es_ES.UTF-8 \               
    # Sets the default language environment variable to Spanish
    LC_ALL=es_ES.UTF-8 \             
    # Overrides all locale settings to Spanish UTF-8
    TERM=xterm-256color              
    # Sets the terminal environment variable to support 256 colors


# ----------------------------------------------------------------------------
# Pre-respuesta a una pregunta interactiva de Wireshark
# ----------------------------------------------------------------------------
# Wireshark/tshark PREGUNTA durante su instalación si los usuarios
# normales (no-root) deben poder capturar paquetes. Como en el contenedor
# siempre somos root, respondemos "false" POR ADELANTADO usando
# debconf-set-selections para que no detenga el build esperando input.
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \ 
# Prints a string to standard output
    | debconf-set-selections                                                
    # Redirects the output as input to automatically answer the prompt


# ----------------------------------------------------------------------------
# RUN: ejecutar comandos durante la construcción de la imagen
# ----------------------------------------------------------------------------
# Aquí instalamos TODO el software del curso en un solo RUN.
#
#   apt-get update          -> actualiza la lista de paquetes disponibles
#   apt-get install         -> descarga e instala los paquetes listados
#     -y                    -> responde "sí" automáticamente
#     --no-install-recommends -> instala SOLO lo esencial (no los extras
#                                sugeridos). Ahorra cientos de MB.
#
# ¿Por qué un solo RUN gigante y no 10 RUN pequeños?
# Porque CADA RUN crea una capa nueva en la imagen. Menos capas = imagen
# más pequeña, más rápida de construir y de descargar.
#
# El "&&" encadena comandos: ejecuta el siguiente SOLO SI el anterior
# terminó bien. Si algo falla, el build se detiene con error (que es lo
# que queremos: mejor un error claro que una imagen rota).
RUN apt-get update && apt-get install -y --no-install-recommends \ 
# Updates repositories and if the command executes installs packages without user prompts
    \                                                              
    # Continues command on the next line
    # === Editores de texto y shells (intérpretes de comandos) ===
    neovim \                                                      
    # Installs Neovim text editor
    vim \                                                          
    # Installs Vim text editor
    zsh \                                                          
    # Installs Z shell command interpreter
    bash-completion \                                              
    # Installs auto-completion for bash commands
    \                                                              
    # Continues command on the next line
    # === Herramientas de 4ta generación ===
    # Estas son las protagonistas de las Unidades 2, 3 y 4:
    perl \                                                         
    # Installs Perl scripting language
    make \                                                         
    # Installs Make build automation tool
    gawk \                                                         
    # Installs GNU awk text processing tool
    sed \                                                         
    # Installs sed stream editor for text manipulation
    grep \                                                         
    # Installs grep tool for pattern matching in text
    \                                                              
    # Continues command on the next line
    # === Utilidades básicas de UNIX ===
    # coreutils trae cat, ls, head, tail, sort, cut, tr, etc.
    # findutils trae find y xargs.
    # procps trae ps, top, kill (gestión de procesos).
    # less = paginador para leer archivos largos.
    # tree = muestra directorios como árbol.
    # jq = procesa JSON desde la línea de comandos.
    coreutils \                                                    
    # Installs basic Linux commands like cat and ls
    findutils \                                                    
    # Installs tools to find files
    procps \                                                       
    # Installs process management tools like ps and kill
    less \                                                         
    # Installs a tool to read long text streams
    tree \                                                         
    # Installs a tool to view directory trees
    jq \                                                           
    # Installs a tool to parse JSON data
    \                                                              
    # Continues command on the next line
    # === Páginas de manual (comando `man`) ===
    # La imagen base de Kali viene sin documentación para
    # ahorrar espacio. La reinstalamos porque en el curso "man bash" o
    # "man grep" es material de consulta obligada.
    man-db \                                                       
    # Installs manual page database manager
    manpages \                                                     
    # Installs standard Linux manual pages
    manpages-posix \                                               
    # Installs POSIX manual pages
    \                                                              
    # Continues command on the next line
    # === Red básica y utilidades de descarga ===
    curl \                                                         
    # Installs curl for transferring data via URLs
    wget \                                                         
    # Installs wget for downloading files
    git \                                                          
    # Installs Git version control system
    git-lfs \                                                      
    # Installs Git Large File Storage
    ca-certificates \                                              
    # Installs SSL/TLS certificates for secure connections
    locales \                                                      
    # Installs tools to manage system locales
    \                                                              
    # Continues command on the next line
    # === Linter (revisor automático de errores) para scripts Bash ===
    shellcheck \                                                   
    # Installs ShellCheck to debug shell scripts
    \                                                              
    # Continues command on the next line
    # === Reconocimiento y escaneo de red ===
    # nmap = el escáner de puertos más famoso.
    # masscan = escaneo masivo de rangos grandes de IPs.
    nmap \                                                         
    # Installs Nmap network scanner
    masscan \                                                      
    # Installs Masscan high-speed port scanner
    \                                                              
    # Continues command on the next line
    # === Captura y análisis de paquetes de red ===
    # tcpdump = capturador clásico por terminal.
    # tshark = versión de terminal de Wireshark.
    tcpdump \                                                      
    # Installs tcpdump packet analyzer
    tshark \                                                       
    # Installs TShark network protocol analyzer
    \                                                              
    # Continues command on the next line
    # === Utilidades de red variadas ===
    netcat-traditional \                                           
    # Installs Netcat for reading/writing network connections
    socat \                                                        
    # Installs socat data relay tool
    dnsutils \                                                     
    # Installs DNS query tools
    whois \                                                        
    # Installs whois directory service client
    traceroute \                                                   
    # Installs traceroute to track packet routing
    mtr-tiny \                                                     
    # Installs mtr network diagnostic tool
    iproute2 \                                                     
    # Installs IP routing utilities
    net-tools \                                                    
    # Installs traditional networking tools
    iputils-ping \                                                 
    # Installs ping command to test connectivity
    \                                                              
    # Continues command on the next line
    # === Anonimato: Tor y similares ===
    # tor = cliente de la red Tor.
    # torsocks = "envoltorio" que hace pasar cualquier comando por Tor.
    # proxychains4 = encadena múltiples proxies.
    # obfs4proxy = ofusca el tráfico de Tor para evadir bloqueos.
    tor \                                                          
    # Installs Tor anonymous network client
    torsocks \                                                     
    # Installs tools to route traffic through Tor
    proxychains4 \                                                 
    # Installs proxy chaining tool
    obfs4proxy \                                                   
    # Installs tool to obfuscate Tor traffic
    \                                                              
    # Continues command on the next line
    # === Cliente HTTP más legible que curl para aprender ===
    httpie \                                                       
    # Installs HTTPie command-line HTTP client
    \                                                              
    # Continues command on the next line
 # --- Después de instalar, activamos el idioma español ---
 # sed busca "# es_ES.UTF-8" en /etc/locale.gen y le quita el "#" para
 # activar esa línea. Luego locale-gen compila los archivos de idioma.
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \        
 # Uses sed stream editor to uncomment the Spanish locale if the command before executes
 && locale-gen \                                                   
 # Generates the newly configured locale if the command before executes
 \                                                                 
 # Continues command on the next line
 # --- Limpieza final: reducir el tamaño de la imagen ---
 # apt deja archivos de caché que ya no necesitamos después de instalar.
 # Borrarlos aquí (en el mismo RUN) hace la capa final más pequeña.
 # Si los borráramos en otro RUN, seguirían ocupando en la capa anterior.
 && apt-get clean \                                                
 # Clears the local repository of retrieved package files if the command before executes
 && rm -rf /var/lib/apt/lists/* 
 # Removes all cached package lists to save disk space if the command before executes


# ----------------------------------------------------------------------------
# SHELL: qué intérprete usar en los siguientes RUN
# ----------------------------------------------------------------------------
# Por defecto Docker usa /bin/sh (un shell más limitado y antiguo). Lo
# cambiamos a bash por si agregamos más instrucciones con sintaxis
# moderna (arrays, [[ ]], etc.).
SHELL ["/bin/bash", "-c"] 
# Sets Bash as the default shell to execute subsequent commands


# ----------------------------------------------------------------------------
# WORKDIR: directorio de trabajo al entrar al contenedor
# ----------------------------------------------------------------------------
# Codespaces siempre monta el código del repositorio en
# /workspaces/<nombre-del-repo>. Establecer /workspaces aquí hace que las
# terminales se abran cerca de nuestros archivos del curso.
WORKDIR /workspaces 
# Changes the current working directory inside the container to /workspaces

# Configuración de Git para el contenedor:
# - safe.directory *: confía en cualquier repo montado (necesario porque
#   /workspaces/... tiene un UID distinto al de root dentro del container).
# - init.defaultBranch main: evita warnings de "master vs main" en git init.
# - pull.rebase false: merge por defecto al hacer pull (más intuitivo)
# - git lfs install --system: registra los hooks de LFS globalmente para
#   que, si un repo los necesita, funcionen sin sorpresas.
RUN git config --system --add safe.directory '*' \                 
# Configures Git to trust all directories in this environment
 && git config --system init.defaultBranch main \                  
 # Sets the default branch for new Git repositories to main if the command before executes
 && git config --system pull.rebase false \                        
 # Configures Git pull to merge rather than rebase by default if the command before executes
 && git lfs install --system                                       
 # Initializes Git Large File Storage globally if the command before executes

#Cambiar la sell de login de root a zsh dentro de la imagen,
#para que chsh ya no haga falta y todo sea consistente.
RUN chsh -s /usr/bin/zsh root 
# Changes the default login shell for the root user to Zsh

# Prompt institucional personalizado
RUN cat >> /root/.zshrc <<'EOF' 
# Uses a HereDoc to append the following text block to the .zshrc profile file

# Carga de colores para Zsh
autoload -U colors && colors 
# Loads the built-in color configuration for the Zsh environment

# Configuración del Prompt:
# %F{color} abre el color, %f lo cierra.
# %(?.éxito.error) es un condicional basado en el estado del último comando.
PROMPT='%F{cyan}[David Torres]%f %F{yellow}%1~%f %(?.%F{green}➜.%F{red}✘)%f %# ' 
# Sets the custom visual prompt for the shell

EOF 
# Ends the HereDoc block input

CMD ["/usr/bin/zsh"] 
# Sets the default command to execute when the container starts



