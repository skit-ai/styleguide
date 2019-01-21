### Copying the gofmt pre-commit githook ###

# Checking if a file is executable or not
 check_executable() {
    FILE=$1
    if [[ -x $FILE ]]
    then
        echo "$FILE has been successfully made executable"
    else
        echo "Failed to make $FILE executable. Please ensure you do the same manually."
        echo "Run: chmod +x $FILE"
    fi
}

# Base directory of the project
BASEDIR=$(pwd)
# Directory where githook will be copied
HOOK_DIR="$BASEDIR/.git/hooks"
# Directory where the pre-commit hook is kept
PRE_COMMIT_HOOK="$BASEDIR/hooks/pre-commit"

echo Copying $PRE_COMMIT_HOOK to $HOOK_DIR ...
cp $PRE_COMMIT_HOOK $HOOK_DIR
echo "Making $HOOK_DIR/pre-commit executable..."
chmod +x "$HOOK_DIR/pre-commit"

# If the copy was unsuccessful, retry copying the file to the given folder once
# and making the script executable
if [[ ! -x "$HOOK_DIR/pre-commit" ]]
then
    cp $PRE_COMMIT_HOOK $HOOK_DIR
    chmod +x "$HOOK_DIR/pre-commit"
fi

# If the file does not exist,
if [[ -e "$HOOK_DIR/pre-commit" ]]
then
    echo "$PRE_COMMIT_HOOK copied successfully to $HOOK_DIR"
else
    echo "Failed to copy $PRE_COMMIT_HOOK to $HOOK_DIR. Please ensure you do the same manually."
    echo "Run: cp $PRE_COMMIT_HOOK $HOOK_DIR"
    check_executable "$HOOK_DIR/pre-commit"
fi
