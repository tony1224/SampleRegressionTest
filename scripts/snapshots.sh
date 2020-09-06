#!/bin/bash
read -p "SnapshotBaseViewControllerTestsでrecordMode = trueである必要があります。(y/N)：" yn
case "$yn" in
[yY]*) ;;
*) echo "処理を中断しました。" ; exit ;;
esac

read -p "ViewController名：" vc
read -p "[$vc]でよろしいですか？(y/N)：" yn
case "$yn" in
[yY]*) ;;
*) echo "処理を中断しました。" ; exit ;;
esac

read -p "言語設定(a.日本, b.英語)：" ab
case "$ab" in
[aA]*) languageOption='-testLanguage ja -testRegion ja_JP' ; lang="ja" ;;
[bB]*) languageOption='-testLanguage en -testRegion en_US' ; lang="en" ;;
esac

# machine config
OSNumber="13.5"
Platform="iOS Simulator"
iPhone8="iPhone 8"
iPhone8Plus="iPhone 8 Plus"
iPhone11="iPhone 11"
iPhone11Pro="iPhone 11 Pro"
iPhone11ProMax="iPhone 11 Pro Max"
iPhoneSE="iPhone SE (1st generation)"

# testFile path
testPath="-only-testing:SampleSnapshotTests/${vc}Tests"

# xcodebuild
xcodebuild \
-workspace SampleSnapshot.xcworkspace \
-scheme SampleSnapshot \
-configuration Debug \
-sdk iphonesimulator \
-parallel-testing-enabled YES \
$languageOption \
-destination "OS=$OSNumber,name=$iPhone8,platform=$Platform" $testPath \
-destination "OS=$OSNumber,name=$iPhone8Plus,platform=$Platform" $testPath \
-destination "OS=$OSNumber,name=$iPhone11,platform=$Platform" $testPath \
-destination "OS=$OSNumber,name=$iPhone11Pro,platform=$Platform" $testPath \
-destination "OS=$OSNumber,name=$iPhone11ProMax,platform=$Platform" $testPath \
-destination "OS=$OSNumber,name=$iPhoneSE,platform=$Platform" $testPath \
test

filePath="SampleSnapshotTests/ReferenceImages_64/$vc" 
mkdir $filePath/$lang ; \cp -f $filePath/* -t $filePath/$lang 
cd $filePath ; ls | grep -E 'png$' | xargs rm -r

