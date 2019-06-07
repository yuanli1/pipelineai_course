{
  global: {},
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    ambassador: {
      ambassadorImage: 'quay.io/datawire/ambassador:0.37.0',
      ambassadorNodePort: 31111,
      ambassadorServiceType: 'NodePort',
      name: 'ambassador',
      platform: 'none',
      replicas: 3,
    },
    argo: {
      artifactRepositoryAccessKeySecretKey: 'accesskey',
      artifactRepositoryAccessKeySecretName: 'mlpipeline-minio-artifact',
      artifactRepositoryBucket: 'mlpipeline',
      artifactRepositoryEndpoint: 'minio-service.kubeflow:9000',
      artifactRepositoryInsecure: 'true',
      artifactRepositoryKeyPrefix: 'artifacts',
      artifactRepositorySecretKeySecretKey: 'secretkey',
      artifactRepositorySecretKeySecretName: 'mlpipeline-minio-artifact',
      executorImage: 'argoproj/argoexec:v2.3.0',
      name: 'argo',
      uiImage: 'argoproj/argoui:v2.3.0',
      workflowControllerImage: 'argoproj/workflow-controller:v2.3.0',
    },
    centraldashboard: {
      image: 'gcr.io/kubeflow-images-public/centraldashboard:v0.5.0',
      name: 'centraldashboard',
    },
    "jupyter-web-app": {
      image: 'gcr.io/kubeflow-images-public/jupyter-web-app:v0.5.0',
      name: 'jupyter-web-app',
      policy: 'Always',
      port: '80',
      prefix: 'jupyter',
      rokSecretName: 'secret-rok-{username}',
      ui: 'default',
    },
    katib: {
      katibUIImage: 'gcr.io/kubeflow-images-public/katib/katib-ui:v0.1.2-alpha-156-g4ab3dbd',
      metricsCollectorImage: 'gcr.io/kubeflow-images-public/katib/metrics-collector:v0.1.2-alpha-156-g4ab3dbd',
      name: 'katib',
      studyJobControllerImage: 'gcr.io/kubeflow-images-public/katib/studyjob-controller:v0.1.2-alpha-156-g4ab3dbd',
      suggestionBayesianOptimizationImage: 'gcr.io/kubeflow-images-public/katib/suggestion-bayesianoptimization:v0.1.2-alpha-156-g4ab3dbd',
      suggestionGridImage: 'gcr.io/kubeflow-images-public/katib/suggestion-grid:v0.1.2-alpha-156-g4ab3dbd',
      suggestionHyperbandImage: 'gcr.io/kubeflow-images-public/katib/suggestion-hyperband:v0.1.2-alpha-156-g4ab3dbd',
      suggestionRandomImage: 'gcr.io/kubeflow-images-public/katib/suggestion-random:v0.1.2-alpha-156-g4ab3dbd',
      vizierCoreImage: 'gcr.io/kubeflow-images-public/katib/vizier-core:v0.1.2-alpha-156-g4ab3dbd',
      vizierCoreRestImage: 'gcr.io/kubeflow-images-public/katib/vizier-core-rest:v0.1.2-alpha-156-g4ab3dbd',
      vizierDbImage: 'mysql:8.0.3',
    },
    metacontroller: {
      image: 'metacontroller/metacontroller:v0.3.0',
      name: 'metacontroller',
    },
    "notebook-controller": {
      controllerImage: 'gcr.io/kubeflow-images-public/notebook-controller:v20190401-v0.4.0-rc.1-308-g33618cc9-e3b0c4',
      injectGcpCredentials: 'true',
      name: 'notebook-controller',
    },
    pipeline: {
      name: 'pipeline',
    },
    "pytorch-operator": {
      cloud: 'null',
      deploymentNamespace: 'null',
      deploymentScope: 'cluster',
      disks: 'null',
      name: 'pytorch-operator',
      pytorchDefaultImage: 'null',
      pytorchJobImage: 'gcr.io/kubeflow-images-public/pytorch-operator:v0.5.0',
    },
    tensorboard: {
      defaultTbImage: 'tensorflow/tensorflow:1.8.0',
      logDir: 'logs',
      name: 'tensorboard',
      servicePort: 9000,
      serviceType: 'ClusterIP',
      targetPort: 6006,
    },
    "tf-job-operator": {
      cloud: 'null',
      deploymentNamespace: 'null',
      deploymentScope: 'cluster',
      name: 'tf-job-operator',
      tfDefaultImage: 'null',
      tfJobImage: 'gcr.io/kubeflow-images-public/tf_operator:v0.5.0',
      tfJobUiServiceType: 'ClusterIP',
    },
  },
}
