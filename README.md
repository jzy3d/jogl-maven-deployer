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
