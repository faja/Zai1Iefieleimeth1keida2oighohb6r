# good to know
- working directory (`pwd`) is `/builds/${GITLAB_PROJECT_PATH}`, eg: `/builds/group1/group2/subgroup/my_awesome_repo`
- working directory containes cloned repo
- env, this is not the full list), just the one I think are usefull
    ```
    CI_REGISTRY_USER=gitlab-ci-token
    CI_REGISTRY_PASSWORD=[MASKED]
    CI_REGISTRY=reg-xyzzy.com
    CI_REGISTRY_IMAGE=reg-xyzzy.com/group1/group2/my_awesome_repo

    GITLAB_DOMAIN=xyzzy.com
    
    CI_PROJECT_ID=9760
    CI_PIPELINE_ID=1496349
    CI_BUILD_ID=19444783
    CI_JOB_ID=19444783
    CI_PIPELINE_SOURCE=push

    CI_JOB_STAGE=build
    CI_JOB_NAME=build-job

    CI_JOB_TOKEN=[MASKED]
    CI_PIPELINE_CREATED_AT=2022-08-29T12:23:47Z
    CI_PIPELINE_URL=https://xyzzy.com/marcin.cabaj/play-gitlab-ci/-/pipelines/1496349

    CI_PROJECT_URL=https://xyzzy.com/marcin.cabaj/play-gitlab-ci
    CI_COMMIT_BEFORE_SHA=ec9d594c50b0f4e70567d5888522841361813d40
    CI_BUILD_REF_NAME=main
    CI_BUILD_STAGE=build

    CI_JOB_URL=https://xyzzy.com/marcin.cabaj/play-gitlab-ci/-/jobs/19444783
    CI_BUILD_NAME=build-job

    CI_COMMIT_SHORT_SHA=ff7dff6b
    CI_BUILD_REF=ff7dff6b9082b6e6ba8dd61ab2faad310d901204
    CI_COMMIT_SHA=ff7dff6b9082b6e6ba8dd61ab2faad310d901204
    CI_COMMIT_REF_NAME=main
    CI_DEFAULT_BRANCH=main
    CI=true
    GITLAB_CI=true
    CI_PROJECT_NAME=play-gitlab-ci

    CI_SERVER_HOST=xyzzy.com
    CI_SERVER_URL=https://xyzzy.com

    CI_PROJECT_DIR=/builds/marcin.cabaj/play-gitlab-ci
    CI_PROJECT_PATH=marcin.cabaj/play-gitlab-ci

    CI_COMMIT_TIMESTAMP=2022-08-29T14:23:42+02:00
    CI_COMMIT_AUTHOR=Marcin Cabaj <marcin.cabaj@xyzzy.com>
    CI_COMMIT_TITLE=test commit
    CI_COMMIT_MESSAGE=test commit
    CI_COMMIT_BRANCH=main
    ```
