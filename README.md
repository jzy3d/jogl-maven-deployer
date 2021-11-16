# jogl-maven-deployer

Scripts to make a maven distribution out of JOGL 2.4 as there is [no official Maven deployment yet](http://forum.jogamp.org/Maven-repo-to-get-2-4-0-rc-td4041046.html).

It would be better to use the [jogamp-scripting project with slight modifications](https://github.com/jzy3d/jogamp-scripting/tree/2.4-to-jzy3d-maven-repo) but I still [have a problem with Wagon FTP to deploy it on my server](https://github.com/jzy3d/jogamp-scripting/issues/1) so I did the crappy procedure below.

## Install in your local maven repository

```bash
./maven-install.sh
```

## Deploy to a remote maven repository

I wasn't able to have Wagon FTP deployer with the deploy-file command so I simply manually copied the installed file on my Maven server.


## Maven JOGL dependencies

### Getting JOGL 2.4 RC 2021/01/11

This one is a maven version of the latest known Jogamp release (Gluegen and JOGL only).

```xml
<!-- JOGL -->
<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-linux-aarch64</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-linux-amd64</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-linux-armv6hf</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-linux-i586</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-macosx-universal</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-windows-amd64</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-windows-i586 </artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<!-- GLUEGEN -->

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-macosx-universal</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-linux-aarch64</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-linux-amd64</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-linux-armv6hf</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-linux-i586</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-macosx-universal</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-windows-amd64</artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-windows-i586 </artifactId>
  <version>v2.4.0-rc-20210111</version>
</dependency>
```

### Getting JOGL 2.4 RC 4 for MacOS BigSur (2021/11/16)

This one is a maven version of a patch allowing to run JOGL on MacOS BigSur. The only difference
with previous release is that the two `macosx-universal` jars contain native libraries
that are able to run on ARM processor, which was tried on Mac Mini M1.

For more information on how the patch was done, see :
* This [readme](https://github.com/jzy3d/jogl/blob/feature/macosx-arm64/HOW-TO-ADD-ARM64-TO-2.4.md)
* This [discussion on Jogamp forum](https://forum.jogamp.org/JOGL-for-Mac-ARM-Silicon-td4040887.html)

A zip version of this patch is [available here](https://download.jzy3d.org/jogl).

[Newt canvas does not work on MacOS BigSur and behaves weirdly on other OS](https://github.com/jzy3d/jzy3d-api/issues/210),
so the [Newt module of Jzy3D has been disabled](https://github.com/jzy3d/jzy3d-api/blob/0f1bc48b23031c75ff39854d895156cf567482e0/pom.xml#L64) for now.

```xml
<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-linux-aarch64</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-linux-amd64</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-linux-armv6hf</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-linux-i586</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-macosx-universal</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-windows-amd64</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-natives-windows-i586 </artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<!-- GLUEGEN -->


<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>
<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-macosx-universal</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-linux-aarch64</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-linux-amd64</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-linux-armv6hf</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-linux-i586</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-macosx-universal</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-windows-amd64</artifactId>
  <version>v2.4.0-rc4</version>
</dependency>

<dependency>
  <groupId>org.jogamp.gluegen</groupId>
  <artifactId>gluegen-rt-natives-windows-i586 </artifactId>
  <version>v2.4.0-rc4</version>
</dependency>
```

## Getting JOGL 2.4 from Jzy3D Server

To get the jar from Jzy3D maven server, simply add this repository reference to your Maven Project

```xml
<repositories>
  <repository>
    <id>jzy3d-snapshots</id>
    <name>Jzy3d Snapshots</name>
    <url>http://maven.jzy3d.org/snapshots/</url>
  </repository>
  <repository>
    <id>jzy3d-releases</id>
    <name>Jzy3d Releases</name>
    <url>http://maven.jzy3d.org/releases/</url>
  </repository>
</repositories>
```
