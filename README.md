# test_jenkins_repository

Abbiamo creato una pipeline su jenkins che ha vari stages:<br> 
(esplicitando il jenkinsfile, che descrive gli stadi della pipeline, su jenkins direttamente; in alternativa si può mettere il jenkinsfile <br>
nel repository da cui legge e dire a jenkins il nome del jenkinsfile, un pò come il cloudbuild.yaml su cloud build) <br> <br>

- legge da questo repository (stage Checkout)
- esegue lo script shell "python test.py"  (stage build)
- crea un immagine docker con runtime python e all'interno il codice di test.py
- la pusha sul dockerhub   <br> <br>


Per poter fare tutto bisogna:
- aver installato docker sul pc. Deve essere in esecuzione al momento dell'esecuzione della jenkins pipeline 
- installare jenkins sul pc ( molto semplice installarlo come file war e lanciarlo con  java -jar jenkins.war)
- installare i plugin necessari di default
- installare i plugin per github  (si chiama github)
- installare i plugin per docker (non so se tutti sono necessari): 
    -  CloudBees Docker Build and Publish plugin
    -  Docker Commons Plugin
    -  Docker Pipeline
    -  Docker build step 
    
Per automatizzare il trigger della jenkins pipeline con un push sul repository di github bisogna collegare Github con Jenkins. <br>
Si va su github  --> settings-->webook-->add webooks   qui descrive tutto https://www.blazemeter.com/blog/how-to-integrate-your-github-repository-to-your-jenkins-project <br>
nel payload si mette l'indirizzo di jenkins che nn può essere  localhost:8080. <br> 
quindi per esporre il localhost su internet abbiamo usato ngrok , qui i dettagli https://blog.knoldus.com/setting-up-github-webhook-for-localhost/ <br>
e messo l'indirizzo staccato da ngrok
