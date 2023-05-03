###  Groovy-based Scripted Pipeline syntax (Maven)

```
node {

    stage('Build') {
        sh 'mvn clean install'
    }

    stage('Test') {
        sh 'mvn test'
    }

    stage('Deploy') {
        sh 'mvn deploy'
    }
}
```


###  Declarative Pipeline syntax (Maven)

```
pipeline {
    agent any

    stages {
     
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                sh 'mvn deploy'
            }
        }
    }
}

```
