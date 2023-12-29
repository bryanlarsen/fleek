{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 

  #  programs.atuin.enable = true; 
  programs.bash.initExtra = ''
    if [ -f "/run/.toolboxenv" ]; then
        TOOLBOX_NAME=$(cat /run/.containerenv | grep -oP "(?<=name=\")[^\";]+")
        echo "[$${HOSTNAME} $${TOOLBOX_NAME}]"
	if [[ $TOOLBOX_NAME = rust ]] ; then
		source /opt/cargo/env
	fi
    fi
  '';

    home.sessionVariables = {
	EDITOR = "vi";
    };
}
