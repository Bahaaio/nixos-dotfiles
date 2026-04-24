{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    clang
    gnumake
    jdk
    jdk25
    maven
    gradle
    go
    fnm
    nodejs_24
    cargo
    python3
    typst
  ];

  environment.sessionVariables = {
    JAVA_HOME = "${pkgs.jdk}";
    _JAVA_OPTIONS = "-Dawt.useSystemAAFontSettings=setting";
  };
}
