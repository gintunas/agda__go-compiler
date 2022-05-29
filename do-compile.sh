clear

rm -r /home/gintas/go/src/Gopiler/Agda
rm -r /home/gintas/go/src/Gopiler/compilationTests

set -e 
set -o pipefail

cd my-playground
agda-2.6.2.2-golang --go -v GO_COMPILER_DEBUG_LOG:100 --useUint64 compilationTests.agda > /home/gintas/go/src/Gopiler/logs/log.log

cd ..
code /home/gintas/go/src/Gopiler/logs/log.log