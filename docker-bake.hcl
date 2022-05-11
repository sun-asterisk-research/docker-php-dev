# NOTE: This file was generated via generate.sh. Don't edit it directly

variable "REGISTRY" {
    default = "docker.io"
}

variable "REPO" {
    default = "sunasteriskrnd/php-dev"
}

group "default" {
    targets = [
        "7.3.33-buster",
        "7.3.33-bullseye",
        "7.3.33-alpine3.14",
        "7.3.33-alpine3.15",
        "7.4.29-buster",
        "7.4.29-bullseye",
        "7.4.29-alpine3.14",
        "7.4.29-alpine3.15",
        "8.0.18-buster",
        "8.0.18-bullseye",
        "8.0.18-alpine3.14",
        "8.0.18-alpine3.15",
        "8.1.5-buster",
        "8.1.5-bullseye",
        "8.1.5-alpine3.14",
        "8.1.5-alpine3.15",
    ]
}

target "7.3.33-buster" {
    context = "./7.3/buster"
    cache-from = [
        "${REGISTRY}/${REPO}:7.3-buster"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7.3-buster",
        "${REGISTRY}/${REPO}:7.3.33-buster",
    ]
}

target "7.3-buster" {
    inherits = ["7.3.33-buster"]
}

target "7.3.33-bullseye" {
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

target "7.3-bullseye" {
    inherits = ["7.3.33-bullseye"]
}

target "7.3.33-alpine3.14" {
    context = "./7.3/alpine3.14"
    cache-from = [
        "${REGISTRY}/${REPO}:7.3-alpine3.14"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7.3-alpine3.14",
        "${REGISTRY}/${REPO}:7.3.33-alpine3.14",
    ]
}

target "7.3-alpine3.14" {
    inherits = ["7.3.33-alpine3.14"]
}

target "7.3.33-alpine3.15" {
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

target "7.3-alpine3.15" {
    inherits = ["7.3.33-alpine3.15"]
}

target "7.4.29-buster" {
    context = "./7.4/buster"
    cache-from = [
        "${REGISTRY}/${REPO}:7.4-buster"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7-buster",
        "${REGISTRY}/${REPO}:7.4-buster",
        "${REGISTRY}/${REPO}:7.4.29-buster",
    ]
}

target "7.4-buster" {
    inherits = ["7.4.29-buster"]
}

target "7.4.29-bullseye" {
    context = "./7.4/bullseye"
    cache-from = [
        "${REGISTRY}/${REPO}:7.4-bullseye"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7-bullseye",
        "${REGISTRY}/${REPO}:7",
        "${REGISTRY}/${REPO}:7.4-bullseye",
        "${REGISTRY}/${REPO}:7.4",
        "${REGISTRY}/${REPO}:7.4.29-bullseye",
        "${REGISTRY}/${REPO}:7.4.29",
    ]
}

target "7.4-bullseye" {
    inherits = ["7.4.29-bullseye"]
}

target "7.4.29-alpine3.14" {
    context = "./7.4/alpine3.14"
    cache-from = [
        "${REGISTRY}/${REPO}:7.4-alpine3.14"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7-alpine3.14",
        "${REGISTRY}/${REPO}:7.4-alpine3.14",
        "${REGISTRY}/${REPO}:7.4.29-alpine3.14",
    ]
}

target "7.4-alpine3.14" {
    inherits = ["7.4.29-alpine3.14"]
}

target "7.4.29-alpine3.15" {
    context = "./7.4/alpine3.15"
    cache-from = [
        "${REGISTRY}/${REPO}:7.4-alpine3.15"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7-alpine3.15",
        "${REGISTRY}/${REPO}:7-alpine",
        "${REGISTRY}/${REPO}:7.4-alpine3.15",
        "${REGISTRY}/${REPO}:7.4-alpine",
        "${REGISTRY}/${REPO}:7.4.29-alpine3.15",
        "${REGISTRY}/${REPO}:7.4.29-alpine",
    ]
}

target "7.4-alpine3.15" {
    inherits = ["7.4.29-alpine3.15"]
}

target "8.0.18-buster" {
    context = "./8.0/buster"
    cache-from = [
        "${REGISTRY}/${REPO}:8.0-buster"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8.0-buster",
        "${REGISTRY}/${REPO}:8.0.18-buster",
    ]
}

target "8.0-buster" {
    inherits = ["8.0.18-buster"]
}

target "8.0.18-bullseye" {
    context = "./8.0/bullseye"
    cache-from = [
        "${REGISTRY}/${REPO}:8.0-bullseye"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8.0-bullseye",
        "${REGISTRY}/${REPO}:8.0",
        "${REGISTRY}/${REPO}:8.0.18-bullseye",
        "${REGISTRY}/${REPO}:8.0.18",
    ]
}

target "8.0-bullseye" {
    inherits = ["8.0.18-bullseye"]
}

target "8.0.18-alpine3.14" {
    context = "./8.0/alpine3.14"
    cache-from = [
        "${REGISTRY}/${REPO}:8.0-alpine3.14"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8.0-alpine3.14",
        "${REGISTRY}/${REPO}:8.0.18-alpine3.14",
    ]
}

target "8.0-alpine3.14" {
    inherits = ["8.0.18-alpine3.14"]
}

target "8.0.18-alpine3.15" {
    context = "./8.0/alpine3.15"
    cache-from = [
        "${REGISTRY}/${REPO}:8.0-alpine3.15"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8.0-alpine3.15",
        "${REGISTRY}/${REPO}:8.0-alpine",
        "${REGISTRY}/${REPO}:8.0.18-alpine3.15",
        "${REGISTRY}/${REPO}:8.0.18-alpine",
    ]
}

target "8.0-alpine3.15" {
    inherits = ["8.0.18-alpine3.15"]
}

target "8.1.5-buster" {
    context = "./8.1/buster"
    cache-from = [
        "${REGISTRY}/${REPO}:8.1-buster"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-buster",
        "${REGISTRY}/${REPO}:8.1-buster",
        "${REGISTRY}/${REPO}:8.1.5-buster",
        "${REGISTRY}/${REPO}:buster",
    ]
}

target "8.1-buster" {
    inherits = ["8.1.5-buster"]
}

target "8.1.5-bullseye" {
    context = "./8.1/bullseye"
    cache-from = [
        "${REGISTRY}/${REPO}:8.1-bullseye"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-bullseye",
        "${REGISTRY}/${REPO}:8",
        "${REGISTRY}/${REPO}:8.1-bullseye",
        "${REGISTRY}/${REPO}:8.1",
        "${REGISTRY}/${REPO}:8.1.5-bullseye",
        "${REGISTRY}/${REPO}:8.1.5",
        "${REGISTRY}/${REPO}:bullseye",
        "${REGISTRY}/${REPO}:latest",
    ]
}

target "8.1-bullseye" {
    inherits = ["8.1.5-bullseye"]
}

target "8.1.5-alpine3.14" {
    context = "./8.1/alpine3.14"
    cache-from = [
        "${REGISTRY}/${REPO}:8.1-alpine3.14"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-alpine3.14",
        "${REGISTRY}/${REPO}:8.1-alpine3.14",
        "${REGISTRY}/${REPO}:8.1.5-alpine3.14",
        "${REGISTRY}/${REPO}:alpine3.14",
    ]
}

target "8.1-alpine3.14" {
    inherits = ["8.1.5-alpine3.14"]
}

target "8.1.5-alpine3.15" {
    context = "./8.1/alpine3.15"
    cache-from = [
        "${REGISTRY}/${REPO}:8.1-alpine3.15"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-alpine3.15",
        "${REGISTRY}/${REPO}:8-alpine",
        "${REGISTRY}/${REPO}:8.1-alpine3.15",
        "${REGISTRY}/${REPO}:8.1-alpine",
        "${REGISTRY}/${REPO}:8.1.5-alpine3.15",
        "${REGISTRY}/${REPO}:8.1.5-alpine",
        "${REGISTRY}/${REPO}:alpine3.15",
        "${REGISTRY}/${REPO}:alpine",
    ]
}

target "8.1-alpine3.15" {
    inherits = ["8.1.5-alpine3.15"]
}
