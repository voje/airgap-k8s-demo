#!/bin/bash

function main() {
	# gen_image_list
	# pull_images	
	# save_images
	# remove_local_images   # simulate rsync to another server
	# load_images
	retag_images
	push_images
}

function gen_image_list() {
	talosctl image default > talos_image_default.txt
}

function pull_images() {
	for image in $(cat talos_image_default.txt); do docker pull $image; done
}

function save_images() {
	docker save -o talos_image_default.tar $(cat talos_image_default.txt | tr '\n' ' ')
}

function remove_local_images() {
	talosctl image default | xargs -I{} docker rmi {}
}

function load_images() {
	docker load -i talos_image_default.tar
}

function retag_images() {
	for image in $(cat talos_image_default.txt); do
		docker tag $image `echo $image | sed -E 's#^[^/]+/#127.0.0.1:6000/#'`;
	done
}

function push_images() {
	for image in $(cat talos_image_default.txt); do \
		docker push `echo $image | sed -E 's#^[^/]+/#127.0.0.1:6000/#'`; \
	done
}

###
main
