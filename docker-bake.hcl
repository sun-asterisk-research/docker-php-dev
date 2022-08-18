# NOTE: This file was generated via generate.sh. Don't edit it directly

variable "REGISTRY" {
    default = "docker.io"
}

variable "REPO" {
    default = "sunasteriskrnd/php-dev"
}

group "default" {
    targets = [
        "7.4.30-bullseye",
        "7.4.30-buster",
        "7.4.30-alpine3.16",
        "7.4.30-alpine3.15",
        "8.0.22-bullseye",
        "8.0.22-buster",
        "8.0.22-alpine3.16",
        "8.0.22-alpine3.15",
        "8.1.9-bullseye",
        "8.1.9-buster",
        "8.1.9-alpine3.16",
        "8.1.9-alpine3.15",
    ]
}

target "7.4.30-bullseye" {
    context = "./7.4/bullseye"
    cache-from = [
        "${REGISTRY}/${REPO}:7.4-bullseye"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7-bullseye",
        "${REGISTRY}/${REPO}:7",
        "${REGISTRY}/${REPO}:7.4-bullseye",
        "${REGISTRY}/${REPO}:7.4",
        "${REGISTRY}/${REPO}:7.4.30-bullseye",
        "${REGISTRY}/${REPO}:7.4.30",
    ]
}

target "7.4-bullseye" {
    inherits = ["7.4.30-bullseye"]
}

target "7.4.30-buster" {
    context = "./7.4/buster"
    cache-from = [
        "${REGISTRY}/${REPO}:7.4-buster"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7-buster",
        "${REGISTRY}/${REPO}:7.4-buster",
        "${REGISTRY}/${REPO}:7.4.30-buster",
    ]
}

target "7.4-buster" {
    inherits = ["7.4.30-buster"]
}

target "7.4.30-alpine3.16" {
    context = "./7.4/alpine3.16"
    cache-from = [
        "${REGISTRY}/${REPO}:7.4-alpine3.16"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7-alpine3.16",
        "${REGISTRY}/${REPO}:7-alpine",
        "${REGISTRY}/${REPO}:7.4-alpine3.16",
        "${REGISTRY}/${REPO}:7.4-alpine",
        "${REGISTRY}/${REPO}:7.4.30-alpine3.16",
        "${REGISTRY}/${REPO}:7.4.30-alpine",
    ]
}

target "7.4-alpine3.16" {
    inherits = ["7.4.30-alpine3.16"]
}

target "7.4.30-alpine3.15" {
    context = "./7.4/alpine3.15"
    cache-from = [
        "${REGISTRY}/${REPO}:7.4-alpine3.15"
    ]
    tags = [
        "${REGISTRY}/${REPO}:7-alpine3.15",
        "${REGISTRY}/${REPO}:7.4-alpine3.15",
        "${REGISTRY}/${REPO}:7.4.30-alpine3.15",
    ]
}

target "7.4-alpine3.15" {
    inherits = ["7.4.30-alpine3.15"]
}

target "8.0.22-bullseye" {
    context = "./8.0/bullseye"
    cache-from = [
        "${REGISTRY}/${REPO}:8.0-bullseye"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8.0-bullseye",
        "${REGISTRY}/${REPO}:8.0",
        "${REGISTRY}/${REPO}:8.0.22-bullseye",
        "${REGISTRY}/${REPO}:8.0.22",
    ]
}

target "8.0-bullseye" {
    inherits = ["8.0.22-bullseye"]
}

target "8.0.22-buster" {
    context = "./8.0/buster"
    cache-from = [
        "${REGISTRY}/${REPO}:8.0-buster"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8.0-buster",
        "${REGISTRY}/${REPO}:8.0.22-buster",
    ]
}

target "8.0-buster" {
    inherits = ["8.0.22-buster"]
}

target "8.0.22-alpine3.16" {
    context = "./8.0/alpine3.16"
    cache-from = [
        "${REGISTRY}/${REPO}:8.0-alpine3.16"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8.0-alpine3.16",
        "${REGISTRY}/${REPO}:8.0-alpine",
        "${REGISTRY}/${REPO}:8.0.22-alpine3.16",
        "${REGISTRY}/${REPO}:8.0.22-alpine",
    ]
}

target "8.0-alpine3.16" {
    inherits = ["8.0.22-alpine3.16"]
}

target "8.0.22-alpine3.15" {
    context = "./8.0/alpine3.15"
    cache-from = [
        "${REGISTRY}/${REPO}:8.0-alpine3.15"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8.0-alpine3.15",
        "${REGISTRY}/${REPO}:8.0.22-alpine3.15",
    ]
}

target "8.0-alpine3.15" {
    inherits = ["8.0.22-alpine3.15"]
}

target "8.1.9-bullseye" {
    context = "./8.1/bullseye"
    cache-from = [
        "${REGISTRY}/${REPO}:8.1-bullseye"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-bullseye",
        "${REGISTRY}/${REPO}:8",
        "${REGISTRY}/${REPO}:8.1-bullseye",
        "${REGISTRY}/${REPO}:8.1",
        "${REGISTRY}/${REPO}:8.1.9-bullseye",
        "${REGISTRY}/${REPO}:8.1.9",
        "${REGISTRY}/${REPO}:bullseye",
        "${REGISTRY}/${REPO}:latest",
    ]
}

target "8.1-bullseye" {
    inherits = ["8.1.9-bullseye"]
}

target "8.1.9-buster" {
    context = "./8.1/buster"
    cache-from = [
        "${REGISTRY}/${REPO}:8.1-buster"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-buster",
        "${REGISTRY}/${REPO}:8.1-buster",
        "${REGISTRY}/${REPO}:8.1.9-buster",
        "${REGISTRY}/${REPO}:buster",
    ]
}

target "8.1-buster" {
    inherits = ["8.1.9-buster"]
}

target "8.1.9-alpine3.16" {
    context = "./8.1/alpine3.16"
    cache-from = [
        "${REGISTRY}/${REPO}:8.1-alpine3.16"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-alpine3.16",
        "${REGISTRY}/${REPO}:8-alpine",
        "${REGISTRY}/${REPO}:8.1-alpine3.16",
        "${REGISTRY}/${REPO}:8.1-alpine",
        "${REGISTRY}/${REPO}:8.1.9-alpine3.16",
        "${REGISTRY}/${REPO}:8.1.9-alpine",
        "${REGISTRY}/${REPO}:alpine3.16",
        "${REGISTRY}/${REPO}:alpine",
    ]
}

target "8.1-alpine3.16" {
    inherits = ["8.1.9-alpine3.16"]
}

target "8.1.9-alpine3.15" {
    context = "./8.1/alpine3.15"
    cache-from = [
        "${REGISTRY}/${REPO}:8.1-alpine3.15"
    ]
    tags = [
        "${REGISTRY}/${REPO}:8-alpine3.15",
        "${REGISTRY}/${REPO}:8.1-alpine3.15",
        "${REGISTRY}/${REPO}:8.1.9-alpine3.15",
        "${REGISTRY}/${REPO}:alpine3.15",
    ]
}

target "8.1-alpine3.15" {
    inherits = ["8.1.9-alpine3.15"]
}
