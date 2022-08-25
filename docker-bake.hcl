# NOTE: This file was generated via generate.sh. Don't edit it directly

variable "REGISTRY" {
    default = "docker.io"
}

variable "REPO" {
    default = "sunasteriskrnd/php-dev"
}

group "default" {
    targets = [
        "7_3_33-bullseye",
        "7_3_33-buster",
        "7_3_33-alpine3_15",
        "7_3_33-alpine3_14",
    ]
}

target "7_3_33-bullseye" {
    context = "./7.3/bullseye"
    cache-from = [
        "${REGISTRY}/${REPO}:7.3-bullseye"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7.3-bullseye",
        "${REGISTRY}/${REPO}:7.3",
        "${REGISTRY}/${REPO}:7.3.33-bullseye",
        "${REGISTRY}/${REPO}:7.3.33",
    ]
}

target "7_3-bullseye" {
    inherits = ["7_3_33-bullseye"]
}

target "7_3_33-buster" {
    context = "./7.3/buster"
    cache-from = [
        "${REGISTRY}/${REPO}:7.3-buster"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7.3-buster",
        "${REGISTRY}/${REPO}:7.3.33-buster",
    ]
}

target "7_3-buster" {
    inherits = ["7_3_33-buster"]
}

target "7_3_33-alpine3_15" {
    context = "./7.3/alpine3.15"
    cache-from = [
        "${REGISTRY}/${REPO}:7.3-alpine3.15"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7.3-alpine3.15",
        "${REGISTRY}/${REPO}:7.3-alpine",
        "${REGISTRY}/${REPO}:7.3.33-alpine3.15",
        "${REGISTRY}/${REPO}:7.3.33-alpine",
    ]
}

target "7_3-alpine3_15" {
    inherits = ["7_3_33-alpine3_15"]
}

target "7_3_33-alpine3_14" {
    context = "./7.3/alpine3.14"
    cache-from = [
        "${REGISTRY}/${REPO}:7.3-alpine3.14"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7.3-alpine3.14",
        "${REGISTRY}/${REPO}:7.3.33-alpine3.14",
    ]
}

target "7_3-alpine3_14" {
    inherits = ["7_3_33-alpine3_14"]
}
