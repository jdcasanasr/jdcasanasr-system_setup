# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
export QUARTUS_PRO_BIN="/opt/intel/intelFPGA_pro/24.2/quartus/bin"
export QUESTA_BIN="/opt/intel/intelFPGA_pro/24.2/questa_fse/bin"
export VERILATOR_BIN="/opt/verilator/bin"
export PATH=$PATH:$VERILATOR_BIN:$QUARTUS_PRO_BIN:$QUESTA_BIN

alias quartus_pro="$QUARTUS_PRO_BIN/quartus &"
alias questa="$QUESTA_BIN/vsim &"
