SCRIPT=$(readlink -f "$0")
BASEDIR=$(dirname "$SCRIPT")
echo $BASEDIR
cd $BASEDIR

rm -r fe-build
cd ../rm-comments-client

npm install
# Build
npm run build && mv build ../docker/fe-build

cd $BASEDIR
docker-compose up --build
