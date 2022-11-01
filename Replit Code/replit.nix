{ pkgs }: {
    deps = [
        pkgs.sudo
        pkgs.chromium
        pkgs.graalvm11-ce
        pkgs.wget
        pkgs.bashInteractive
        pkgs.wine.out
    ];
}