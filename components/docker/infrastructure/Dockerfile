# https://github.com/cloudposse/geodesic/
ARG GEODESIC_VERSION=3.0.0
ARG GEODESIC_OS=debian
# https://github.com/cloudposse/atmos
ARG ATMOS_VERSION=1.182.0
# This should match the version set in .github/workflows/auto-format.yaml
ARG TF_1_VERSION=1.5.7

FROM public.ecr.aws/cloudposse/geodesic:${GEODESIC_VERSION}-${GEODESIC_OS}

# Geodesic message of the Day
ENV MOTD_URL="https://geodesic.sh/motd"

# Some configuration options for Geodesic
ENV AWS_SAML2AWS_ENABLED=false
ENV AWS_VAULT_ENABLED=false
ENV AWS_VAULT_SERVER_ENABLED=false
ENV CHAMBER_KMS_KEY_ALIAS=aws/ssm
ENV GEODESIC_TF_PROMPT_ACTIVE=false
ENV DIRENV_ENABLED=false

# Enable advanced AWS assume role chaining for tools using AWS SDK
# https://docs.aws.amazon.com/sdk-for-go/api/aws/session/
ENV AWS_SDK_LOAD_CONFIG=1
ENV AWS_DEFAULT_REGION=us-east-1
ENV AWS_DEFAULT_SHORT_REGION=use1
ENV AWS_REGION_ABBREVIATION_TYPE=short
ARG TF_1_VERSION
RUN apt-get update && apt-get install -y -u --allow-downgrades \
    terraform-1="${TF_1_VERSION}-*" && \
    update-alternatives --set terraform /usr/share/terraform/1/bin/terraform

ARG ATMOS_VERSION
RUN apt-get update && apt-get install -y --allow-downgrades \
    atmos="${ATMOS_VERSION}-*" \
    spacectl

# Install pluto - a CLI tool to help discover deprecated and removed apiVersions in Kubernetes
# https://pluto.docs.fairwinds.com/
# https://github.com/FairwindsOps/pluto
RUN apt-get update && apt-get install -y --allow-downgrades \
    pluto

COPY rootfs/ /


ARG DOCKER_REPO
ARG TENANT="core"
ENV NAMESPACE=ex1
# Format of Geodesic banner prompt
ENV BANNER=${NAMESPACE}
ENV DOCKER_IMAGE="${NAMESPACE}/infra"
ENV DOCKER_TAG="latest"

# Default AWS_PROFILE
ENV AWS_PROFILE="cptest-identity"
# This sets the default AWS_CONFIG to be used after signing in with Leapp.
# Once logged in, this config file gives you access to all the other teams
# and roles (if you are authorized for access).
ENV AWS_CONFIG_FILE=/etc/aws-config/aws-config-teams
ENV ASSUME_ROLE_INTERACTIVE_QUERY=${NAMESPACE}${TENANT:+-$TENANT}-gbl-

WORKDIR /
