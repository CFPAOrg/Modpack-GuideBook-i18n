def pack(id: str, version: str, need_upload: bool = False) -> None:
    # save json file to dist/json/index.json and dist/json/<id>.json
    # save zip file to dist/pack/id/version/id-version-commit-universal.zip
    if need_upload:
        upload(id, version)


def upload(id: str, version: str) -> None:
    # upload to cos
    pass
