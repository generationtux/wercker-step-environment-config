# Environment Config 

A public step for use with Wercker CI that will replace Kubernetes environment configs consistently.

	- environment-config:
		path: [PATH/TO/CONFIG]
		
### Description
```path:```

Path to the config that you wanted updated.

### Example

Say the Hurdy service is using Kubernetes config maps and you are in a deploy to production pipeline.

	- environment-config:
		path: ./deploy/staging/staging-notifications-config.yml