#!/bin/bash
git_clone() {
	git clone https://github.com/Matt25969/$1
}
repositories=(AccountConsumer AccountLetterProducer AccountNumberProducer AccountPrizeProducer AccountService)

maven_clean_install() {
	pushd $1
	mvn clean install
	popd
}

for repository in ${repositories[@]}; do
	rm -rf ${repository}
	git_clone ${repository}
done
