dev:
	git pull
	ansible-playbook -i $(app_name)-dev.pdevops.online, -e ansible_user=azuser -e ansible_password=DevOps@12345 -e ENV=dev -e app_name=$(app_name) roboshop.yml

prod:
	git pull
	ansible-playbook -i $(app_name)-prod.pdevops.online, -e ansible_user=azuser -e ansible_password=DevOps@12345 -e ENV=prod -e app_name=$(app_name) roboshop.yml
