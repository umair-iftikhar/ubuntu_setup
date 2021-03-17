    #!/bin/sh

    for package; do
        dpkg -s "$package" >/dev/null 2>&1 && {
            echo "$package is installed."
        } || {
            sudo apt-get install $package
        }
    done
    # Final message
    echo All application have been installed, the script will now quit.

    # Exit the script
    exit 0
