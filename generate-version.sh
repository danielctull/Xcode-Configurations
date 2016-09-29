
configurationDirectory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "${PROJECT_DIR}"

bundleVersion=`git log --oneline | wc -l | tr -d ' '`
configuration="${configurationDirectory}/Version.xcconfig"

rm -f "$configuration"
touch "$configuration"

echo "CURRENT_PROJECT_VERSION = $bundleVersion" >> "$configuration"
