# Devcontainer
To run the project in a devcontainer, use the "Clone Repository in devcontainer" command. To update the image, run these commands from the root of the repository:

```bash
# Authenticate with ghcr.io
# export CR_PAT=YOUR_TOKEN
# echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
docker build -t ghcr.io/adarah/picoctf:latest .devcontainer
docker push ghcr.io/adarah/picoctf
```