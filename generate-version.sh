
configurationDirectory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "${PROJECT_DIR}"

bundleVersion=`git log --oneline | wc -l | tr -d ' '`
configuration="${configurationDirectory}/Version.xcconfig"
debugConfiguration="${configurationDirectory}/DebugVersion.xcconfig"
releaseConfiguration="${configurationDirectory}/ReleaseVersion.xcconfig"

rm -f "$configuration"
rm -f "$debugConfiguration"
rm -f "$releaseConfiguration"
touch "$configuration"
touch "$debugConfiguration"
touch "$releaseConfiguration"

echo "CURRENT_PROJECT_VERSION = $bundleVersion" >> "$configuration"

echo "#include \"Debug.xcconfig\"" >> "$debugConfiguration"
echo "#include \"Version.xcconfig\"" >> "$debugConfiguration"

echo "#include \"Release.xcconfig\"" >> "$releaseConfiguration"
echo "#include \"Version.xcconfig\"" >> "$releaseConfiguration"
