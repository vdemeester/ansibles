install:
	@echo ">> Install roles from ansible-galaxy"
	ansible-galaxy install -i -f -r ansible-requirements.txt -p roles

gitignore:
	@echo ">> Update gitignore"
	ansible-galaxy -p roles list | awk  -F "," '{ print $$1 }' | awk '{ print "roles/"$$2 }' > .gitignore
	cat .gitignore.manual >> .gitignore
