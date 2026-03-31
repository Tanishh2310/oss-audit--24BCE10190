
#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Mitul Bhatnagar | Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "        Directory Audit Report"
echo "========================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extracts Permissions, Owner, and Group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, "$4"}')
        # Extracts Human-readable size
        SIZE=$(du -sh "$DIR" 2>/dev/null | awk '{print $1}')
        echo "Dir: $DIR"
        echo " -> Permissions/Owner: $PERMS"
        echo " -> Total Size: $SIZE"
        echo "----------------------------------------"
    else
        echo "Dir: $DIR does not exist on this system"
        echo "----------------------------------------"
    fi
done

# Section for Git configuration audit
echo "Checking Git Configuration Directory..."

# Common global git config directory is ~/.config/git or /etc/gitconfig
GIT_CONFIG_DIR="$HOME/.config/git"

if [ -d "$GIT_CONFIG_DIR" ]; then
    GIT_PERMS=$(ls -ld "$GIT_CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "SUCCESS: Git config directory found at $GIT_CONFIG_DIR"
    echo "Permissions/Owner: $GIT_PERMS"
else
    # Check for the local .git directory in the current path as a fallback
    if [ -d ".git" ]; then
        GIT_PERMS=$(ls -ld ".git" | awk '{print $1, $3, $4}')
        echo "SUCCESS: Local .git directory found in current path."
        echo "Permissions/Owner: $GIT_PERMS"
    else
        echo "NOTICE: Specific Git config directory ($GIT_CONFIG_DIR) not found."
        echo "Git may be using the global ~/.gitconfig file instead of a directory."
    fi
fi
echo "========================================"
