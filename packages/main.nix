{pkgs, ...}:


with pkgs;
let
  default-python = python3.withPackages (python-packages: with python-packages; [
    # basics
    pip faker pywal black setuptools wheel twine flake8 virtualenv pudb ipykernel python-dotenv
    # utils
    aioconsole aiohttp matplotlib discordpy selenium
    # school
    pygame pillow cython pandas
  ]);

in
{
  home.packages = with pkgs; [
    # KDE
    kdeconnect okular gwenview kolourpaint spectacle
    # TERMINAL
    gotop htop neofetch cava zip unzip unrar man tree ponysay
    cli-visualizer
    # DEV
    gcc gnumake gdb rustup cmake conda default-python jdk8 cmake doctest
    nodejs pkg-config upx SDL2 ocaml ocamlformat rlwrap ocamlPackages.merlin
    # OFFICE
    wpsoffice plasma-browser-integration brave dconf audacity texlive.combined.scheme-medium
    # OTHER
    discord element-desktop vlc spotify gimp tmate  wineWowPackages.stable openvpn pavucontrol  zoom
    discord-ptb tor-browser-bundle-bin
    # GAME
    multimc
    # OBS
    obs-studio obs-v4l2sink
    # TOOLS
    vbindiff metasploit
    # RESEAU
    nmap tor
  ];
}