### Scripted Pipeline syntax

```
node {
   stage('Build') {
      sh 'echo "Build"'
   }
   stage('Test') {
      sh 'echo "Test"'
   }
   stage('Deploy') {
      sh 'echo "Deploy"'
   }
}
```

### Declarative Pipeline Syntax

```
pipeline {
   agent any
   stages {
      stage('Build') {
         steps {
            sh 'echo "Build"'
         }
      }
      stage('Test') {
         steps {
            sh 'echo "Test"'
         }
      }
      stage('Deploy') {
         steps {
            sh 'echo "Deploy"'
         }
      }
   }
}
```
