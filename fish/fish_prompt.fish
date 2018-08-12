# according to fish documentation this is the default file for setting up fish prompt on shell startup
# please see: https://fishshell.com/docs/current/tutorial.html#tut_prompt
# in this prompt looking to have color callouts for different info
# this prompt is using git to determine git branch. If you are having issues remove the lines regarding 'git'
# colors in this prompt are for a 32-bit system and not all fish colors are available.
# to see available color list run "set_color -c" in a fish shell

function fish_prompt
   # set git_branch variable with color coding and git branch name if available
   set -l git_branch (set_color red)"|\\"(set_color green)(git branch ^/dev/null | sed -n '/\* /s///p')

   # tag prompt with yellow hour:minute:second timestamp
   set_color yellow
   echo -n (date "+%H:%M:%S")

   # tag prompt with cyan present working directory
   set_color cyan
   echo -n (prompt_pwd)

   # tag prompt with color coded git branch when available
   echo -n $git_branch

   # end prompt with a purple ascii fish
   set_color purple
   echo -n '><<$> '
end
