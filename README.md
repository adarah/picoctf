# PicoCTF

If doing a challenge that requires invoking `docker` commands with bind mounts (`-v`), you cannot clone this repository using `Dev Containers: Clone Repository in Container Volume` as the `$LOCAL_WORKSPACE_FOLDER` variable will not be initialized properly. Instead, clone the repository normally and use `Dev Containers: `