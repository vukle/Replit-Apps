{ pkgs }: {
    deps = [
        pkgs.firefox-esr-91-unwrapped
        pkgs.python39Full
        pkgs.sudo
        pkgs.chromium
        pkgs.graalvm11-ce
        pkgs.wget
        pkgs.bashInteractive
        pkgs.wine.out
    ];
}