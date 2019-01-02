
// OTHER RESOURCES: Building lib using Gradle:
// https://forum.processing.org/two/discussion/26711/processing-library-template-using-gradle
// https://github.com/enkatsu/processing-library-template-gradle

Command:     gradle clean
Description: Removes library folder

Command:     gradle build
Description: creates library + library jar

Command:     gradle javadoc
Description: Creates reference/javadoc that contains the reference. Notice clean does not remove this folder

