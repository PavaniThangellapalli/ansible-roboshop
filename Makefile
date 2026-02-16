dev:
	git pull
	ssh-keyscan -H $(app_name)-dev.pdevops.online >> ~/.ssh/known_hosts
	ansible-playbook -i $(app_name)-dev.pdevops.online, -e ansible_user=azuser -e ansible_password=DevOps@12345 -e ENV=dev -e app_name=$(app_name) roboshop.yml

prod:
	git pull
	ssh-keyscan -H $(app_name)-prod.pdevops.online >> ~/.ssh/known_hosts
	ansible-playbook -i $(app_name)-prod.pdevops.online, -e ansible_user=azuser -e ansible_password=DevOps@12345 -e ENV=prod -e app_name=$(app_name) roboshop.yml
