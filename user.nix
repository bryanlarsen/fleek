{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 

  #  programs.atuin.enable = true; 
  programs.bash.initExtra = ''
    if [ -f "/run/.toolboxenv" ]; then
        TOOLBOX_NAME=$(cat /run/.containerenv | grep -oP "(?<=name=\")[^\";]+")
        echo "[$${HOSTNAME} $${TOOLBOX_NAME}]"
	if [[ $TOOLBOX_NAME = rust || $TOOLBOX_NAME = jammy ]] ; then
		export RUSTUP_HOME=/opt/rustup
		export CARGO_HOME=/opt/cargo
		source /opt/cargo/env
	fi
    fi

    git-town completions bash | source
  '';

    home.sessionVariables = {
	EDITOR = "vi";
    };
}
