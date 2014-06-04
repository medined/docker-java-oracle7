
# Build the image

```
docker build -t medined/java-oracle7 .
```

# See the image

```
docker images
```

# Run the image

```
docker run -i -t medined/java-oracle7 /bin/bash
```

# Validate Java version inside image

```
root@320a248e68b9:/# java -version
java version "1.7.0_60"
Java(TM) SE Runtime Environment (build 1.7.0_60-b19)
Java HotSpot(TM) 64-Bit Server VM (build 24.60-b09, mixed mode)
```
