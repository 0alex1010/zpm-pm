#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <package_name>"
  exit 1
fi

package_name="$1"
url="https://raw.githubusercontent.com/0alex1010/zpm-pm/refs/heads/main/packages/$package_name.sh"

# Check if the URL exists (optional, but recommended)
if curl --output /dev/null --silent --head --fail "$url"; then
  echo "$1 exists."
else
  echo "Error: $1 does not exist."
  exit 1
fi


# You can do further processing with the URL here, like downloading it:
# curl -O "$url"


#  Alternatively, if you intend to build the URL and use it later in the script:
echo "Built URL: $url"  # Print the constructed URL to stdout (or use it in a variable)


# Example of using the URL in a variable for downloading:
download_url="$url"
downloaded_file="$package_name.sh"
curl -L "$download_url" -o "$downloaded_file"  # The -L option handles redirects
echo "Downloaded $downloaded_file"



exit 0
