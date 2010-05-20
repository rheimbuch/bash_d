BASHD_DIR="$HOME/.bash.d"

load_scripts()
{
  for script in $BASHD_DIR/$1/*; do
    [ -f "$script" ] || continue
    . $script
  done
}