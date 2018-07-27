
VERSION=`cat VERSION`
HADOOP_CORE=http://archive.apache.org/dist/hadoop/core/

wget "$HADOOP_CORE/hadoop-$VERSION/hadoop-$VERSION-src.tar.gz" 

tar -xzf hadoop-$VERSION-src.tar.gz
