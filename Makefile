
create:
	@kubectl create -f JENKINS/namespaces.yaml --save-config --record
	@kubectl create -f JENKINS/ClusterRoleBinding.yaml --save-config --record
	@kubectl create -f JENKINS/services.yaml --save-config --record
	@kubectl create -f JENKINS/pv.yaml --save-config --record
	@kubectl create -f JENKINS/pvc.yaml --save-config --record
	@kubectl create -f JENKINS/deployment.yaml --save-config --record
	

apply:
	@kubectl apply -f JENKINS/namespaces.yaml
	@kubectl apply -f JENKINS/ClusterRoleBinding.yaml 
	@kubectl apply -f JENKINS/services.yaml 
	@kubectl apply -f JENKINS/deployment.yaml 
 
registry:
	@kubectl apply -f Register/service.yaml
	@kubectl apply -f Register/service2.yaml
	@kubectl apply -f Register/deployment.yaml

geral:
	@kubectl apply -f geral.yaml

exec: 
	minikube service jenkins -n jenkins

# Exemplo de comando Chave Admin Jenkins
#kubectl exec jenkins-5ccb4f9498-56svc cat /var/jenkins_home/secrets/initialAdminPassword 33c7f2604a274647acb327b87dba6427	
#kubectl exec -n jenkins jenkins-6547c655d4-plmcs cat /var/jenkins_home/secrets/initialAdminPassword

# minikube tunnel
# minikube ip
# minikube addons enable ingress
