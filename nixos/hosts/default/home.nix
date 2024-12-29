{ config, pkgs, inputs, ... }:

{
  home.username = "keane";
  home.homeDirectory = "/home/keane";
  home.stateVersion = "24.11";

  nixpkgs.config.allowUnfree = true;

  imports = [
    inputs.nixcord.homeManagerModules.nixcord
  ];

  programs = {
    neovim = {
      enable = true;
      vimAlias = true;
    };
    nixcord = {
      enable = true;
      config = {
        useQuickCss = true;
        themeLinks = ["https://raw.githubusercontent.com/Synqat/vencord-theme/main/theme.css"];
        plugins = {
          fakeNitro.enable = true;
          USRBG.enable = true;
          alwaysAnimate.enable = true;        
        };
      };
    };  
  };

  #gtk.enable = true;
  gtk.cursorTheme.package = pkgs.bibata-cursors;
  gtk.cursorTheme.name = "Bibata-Modern-Ice";
  gtk.theme.package = pkgs.colloid-gtk-theme;
  gtk.theme.name = "Colloid-Dark";
  gtk.iconTheme.package = pkgs.gruvbox-plus-icons;
  gtk.iconTheme.name = "Gruvbox-Plus-Dark";

  qt.enable = true;
  qt.platformTheme.name = "gtk";
  qt.style.name = "adwaita-dark";
  qt.style.package = pkgs.adwaita-qt;

  home.packages = [
    pkgs.cpu-x
    pkgs.zapzap
    pkgs.tor-browser
    pkgs.qbittorrent
    pkgs.obsidian
    pkgs.heroic
    pkgs.lutris
    pkgs.bottles
    pkgs.kodi
    pkgs.cemu
    pkgs.ryujinx
    pkgs.ppsspp
    pkgs.feh
    pkgs.rofi
    pkgs.nautilus
    pkgs.networkmanagerapplet
    pkgs.hyprgui
    pkgs.waypaper
    pkgs.swww
    pkgs.libsForQt5.ark
    pkgs.waybar
    ];


  home.file = {

  };


  home.sessionVariables = {
     EDITOR = "vim";
     STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };



  programs.home-manager.enable = true;
}
