
VERSION=`cat VERSION`

cd hadoop-$VERSION-src

mvn package -Pdist,native -DskipTests -Dtar

if [[ $? -eq 0 ]]; then
  echo -e "\n\ncomile hadoop $version success!\n\n"
	#mv ./hadoop-dist/target/hadoop-$version.tar.gz /binary
else
   echo -e "\n\ncomile hadoop $version fail!\n\n"
fi
