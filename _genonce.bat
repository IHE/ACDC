@SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
"%JAVA_HOME%\bin\JAVA" -Xmx2G -jar input-cache/org.hl7.fhir.publisher.jar -ig ig.ini
@PAUSE