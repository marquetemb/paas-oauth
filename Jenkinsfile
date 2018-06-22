@Library('libpipelines@master') _

hose {
    EMAIL = 'eos'
    MODULE = 'paas-oauth'
    REPOSITORY = 'paas-oauth'
    SLACKTEAM = 'stratiopaas'
    BUILDTOOL = 'make'
    DEVTIMEOUT = 15
    LANG = 'go'
    AGENT = 'centos-base-ssh-74'
    NEW_VERSIONING = 'true'
    
    DEV = { config ->
        doPackage(config)
        doDeploy(config)
    }
}
