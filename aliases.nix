{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
   home.shellAliases = {
    "fleeks" = "cd ~/.local/share/fleek";
    
    "latest-fleek-version" = "nix run https://getfleek.dev/latest.tar.gz -- version";
    
    "update-fleek" = "nix run https://getfleek.dev/latest.tar.gz -- update";
    
    "windev" = "sudo mount.cifs -o rw,user=bryan,uid=$(id -u),gid=$(id -g),forceuid,forcegid,vers=3.0 //192.168.122.69/bowtie /mnt/windev";
    };
}
