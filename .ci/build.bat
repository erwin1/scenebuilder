echo "Executing gradle"

call gradlew shadowJar -PVERSION=%APPVEYOR_REPO_TAG_NAME%

echo "TAG NAME"
echo %APPVEYOR_REPO_TAG_NAME%

if NOT "%APPVEYOR_REPO_TAG_NAME%" == "" (
  set VERSION=%APPVEYOR_REPO_TAG_NAME%
  echo %VERSION%
  call .ci\windows.bat
)