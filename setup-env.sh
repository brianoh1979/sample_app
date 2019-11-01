case $CIRCLE_BRANCH in
    "develop")
        export ENVIRONMENT="dev"
        export HEROKU_APP="thawing-cliffs-50633"
        ;;
    "master")
        export ENVIRONMENT="production"
        export HEROKU_APP="thawing-cliffs-50633"
        ;;
esac
export NODE_ENV="production"
