echo "Start of setup.sh"
# get script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# create array of folder names
echo
read -p "run Saas.IdentityProvider" -n 1 -r CONTINUE_SCRIPT
if [[ $CONTINUE_SCRIPT =~ ^[Yy]$ ]]; then
    targetDir="${SCRIPT_DIR}/src/Saas.Identity/Saas.IdentityProvider/deployment"
    echo "dir ${targetDir}"
    cd $targetDir
    # run setup script
    ./setup.sh
    ./run.sh
fi

echo
read -p "run Saas.Permissions" -n 1 -r CONTINUE_SCRIPT
if [[ $CONTINUE_SCRIPT =~ ^[Yy]$ ]]; then
    targetDir="${SCRIPT_DIR}/src/Saas.Identity/Saas.Permissions/deployment"
    echo "dir ${targetDir}"
    cd $targetDir
    # run setup script
    ./setup.sh
    ./run.sh
fi

echo
read -p "run Saas.Admin" -n 1 -r CONTINUE_SCRIPT
if [[ $CONTINUE_SCRIPT =~ ^[Yy]$ ]]; then
    targetDir="${SCRIPT_DIR}/src/Saas.Admin/deployment"
    echo "dir ${targetDir}"
    cd $targetDir
    # run setup script
    ./setup.sh
    ./run.sh
fi

echo
read -p "run Saas.SignupAdministration" -n 1 -r CONTINUE_SCRIPT
if [[ $CONTINUE_SCRIPT =~ ^[Yy]$ ]]; then
    targetDir="${SCRIPT_DIR}/src/Saas.SignupAdministration/deployment"
    echo "dir ${targetDir}"
    cd $targetDir
    # run setup script
    ./setup.sh
    ./run.sh
fi

echo
read -p "run Saas.Application" -n 1 -r CONTINUE_SCRIPT
if [[ $CONTINUE_SCRIPT =~ ^[Yy]$ ]]; then
    targetDir="${SCRIPT_DIR}/src/Saas.Application/deployment"
    echo "dir ${targetDir}"
    cd $targetDir
    # run setup script
    ./setup.sh
    ./run.sh
fi
