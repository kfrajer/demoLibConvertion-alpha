MASTER instructions oracle: https://docs.oracle.com/javase/7/docs/technotes/tools/windows/javac.html
//REFERENCE: https://forum.processing.org/two/discussion/27721/java-cannot-run-processing-quits-with-the-following-error-error-could-not-find-or-load-main-class
//REFERENCE: Making a library using CLI: https://discourse.processing.org/t/including-shared-pde-files-across-projects/1701/14
//REFERENCE: HappyCoding.io
//REFERENCE: mysandbox
//REFERENCE: https://github.com/kfrajer/building_PDE_file
//REFERENCE: https://stackoverflow.com/questions/219585/including-all-the-jars-in-a-directory-within-the-java-classpath

// OTHER RESOURCES: Building lib using Eclipse:
//[Intro P3+Eclipse:]       https://processing.org/tutorials/eclipse/
//[LIB creationdiscussion:] https://forum.processing.org/two/discussion/21049/creating-a-library
//[LIB creation:]           https://github.com/processing/processing/wiki/Library-Basics
//[Template:]               https://github.com/processing/processing-library-template
//[Example:]                https://github.com/Lord-of-the-Galaxy/Timing-Utilities/tree/master/timing_utils

// OTHER RESOURCES: Building lib using Gradle:
// https://forum.processing.org/two/discussion/26711/processing-library-template-using-gradle
// https://github.com/enkatsu/processing-library-template-gradle

// OTHER RESOURCES: Building lib using Gradle + Eclipse:
// Gradle: https://toastedbits.com/2017/02/13/processing-with-gradle-and-eclipse/

// JavaDoc comments:
// Reference: https://www.oracle.com/technetwork/articles/java/index-137868.html
// Example:   http://www.docjar.net/html/api/java/util/Collections.java.html
// Example:   https://github.com/processing/processing/blob/master/core/src/processing/core/PApplet.java

// MarkDown + HTML: https://daringfireball.net/projects/markdown/syntax#html





C:\mySandBox\GitHub\UltimateBox\UltimateBoc_cam_Dec2018
======================================
[ROOT_FOLDER]\demoLibConvertion-alpha\loadingRing_viaLib
cd libraryGeneration\development\

======================================
REM EXECUTE: Make dir to store class files
mkdir bin
REM EXECUTE: Generate class files from java source files
REM javac -d bin -sourcepath source -cp lib/core.jar;lib/gluegen-rt-natives-windows-amd64.jar;lib/gluegen-rt.jar;lib/jogl-all-natives-windows-amd64.jar;lib/jogl-all.jar source/multiple_cube_rotations.java
javac -d bin -cp C:\mySandBox\AppsBinFolder\P3\current\processing\core\library\core.jar com\UltimateBox\DelaySignArc\DelaySignArc.java

======================================
REM EXECUTE: Pack class files into library
jar -cf ultimatebox.jar -C bin/ .

======================================
REM Shows content of recently created jar archive
[ROOT_FOLDER]\demoLibConvertion-alpha\loadingRing_viaLib\libraryGeneration\development>jar tf ultimatebox.jar
META-INF/
META-INF/MANIFEST.MF
com/
com/UltimateBox/
com/UltimateBox/DelaySignArc/
com/UltimateBox/DelaySignArc/DelaySignArc.class

======================================
REM Display content of current libraryGeneration folder
[ROOT_FOLDER]\demoLibConvertion-alpha\loadingRing_viaLib\libraryGeneration\development>dir
 Volume in drive C is Windows8_OS
 Volume Serial Number is 4E33-E988

 Directory of [ROOT_FOLDER]\demoLibConvertion-alpha\loadingRing_viaLib\libraryGeneration\development

2018-12-31  07:39 PM    <DIR>          .
2018-12-31  07:39 PM    <DIR>          ..
2018-12-31  07:25 PM    <DIR>          bin
2018-12-30  05:25 PM    <DIR>          com
2018-12-31  07:39 PM             1,558 ultimatebox.jar
               1 File(s)          1,558 bytes
               4 Dir(s)   6,744,125,440 bytes free

======================================
To use the library package, use either: 
   [A] Now move the ultimatebox.jar to the code/ folder within your current sketch project.
       You can access jar elements directly without calling the import statment (Processing will load it for you)
   [B] From https://github.com/processing/processing/wiki/How-to-Install-a-Contributed-Library
       Move ultimatebox.jar to sketchbook folder into proper lib folder. Example: 
       C:\Users\C\Documents\Processing\libraries\ultimatebox\library
       and access jar elements directly by calling either import statment:
       I) import com.UltimateBox.DelaySignArc.DelaySignArc;  [PREFERED]
      II) import com.UltimateBox.DelaySignArc.*;
       Notice that you can find a running example using the library in libUseDemonstration\libUseDemonstration.pde


======================================
Handy commands
cd C:\mySandBox\GitHub\UltimateBox\UltimateBoc_cam_Dec2018\demoLibConvertion-alpha\gradleDemo\ultimatebox
emacs ..\..\loadingRing_viaLib\cmREADME.txt src\main\java\com\UltimateBox\DelaySignArc\DelaySignArc.java

Command:     gradle clean
Description: Removes library folder

Command:     gradle build
Description: creates library + library jar

Command:     gradle javadoc
Description: Creates reference/javadoc that contains the reference. Notice clean does not remove this folder

