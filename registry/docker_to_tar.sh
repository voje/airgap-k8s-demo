xargs -I{} skopeo copy docker://{} tar:{}.tar < rke2-images-all.linux-amd64.txt.short

