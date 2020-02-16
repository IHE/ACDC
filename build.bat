call sushi .
xcopy build\input\resources\* input\resources /Y
xcopy build\input\pagecontent\* input\pagecontent /Y
xcopy build\input\resource-docs\* input\resource-docs /Y
copy build\input\ImplementationGuide-*.json input
