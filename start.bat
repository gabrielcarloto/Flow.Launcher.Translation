@echo off
SET plugin_dir=%~dp0%
SET icon=%plugin_dir%src\assets\imgs\translate.png
SET "icon=%icon:\=/%"
SET title="Error: Node.js is not installed on your system."
SET subtitle="Please install it from nodejs.org to use the translate plugin!"


where /q node
IF ERRORLEVEL 1 (
    echo {"result": [{"Title": %title%, "Subtitle": %subtitle%, "IcoPath": "%icon%"}]}
) ELSE (
    node %plugin_dir%/src/main.js %*
)
