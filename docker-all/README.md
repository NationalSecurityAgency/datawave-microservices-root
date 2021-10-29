# DATAWAVE Docker Compose

## Components

### Discovery (Consul)

Consul v1.9.8 is a prepacked docker image used for discovery between the various services.

### Fabio 

Fabio 1.5.15-go1.15.5 is an ingress and load balancing (when multiple instances of a service are 
running) service.  It determines available services using Consul.  Services must pass 
Consul health checks to be available.

### Messaging (RabbitMQ)

RabbitMQ v3.7.7 is a prepacked docker image used for messaging between the various services.

### Configuration

[Datawave Config Service](https://github.com/NationalSecurityAgency/datawave-config-service) is Datawave's customized Spring Cloud config service.

Configuration files can be found in the config folder.

You will need to build the docker image for this service on your local machine following the instructions in the config service README.

### Cache

[Datawave Hazelcast Service](https://github.com/NationalSecurityAgency/datawave-hazelcast-service) is Datawave's customized Hazelcast In-Memory Data Grid.

You will need to build the docker image for this service on your local machine following the instructions in the config service README.

### Authorization

[Datawave Authorization Service](https://github.com/NationalSecurityAgency/datawave-authorization-service) provides basic authorization for the Datawave microservices.

You will need to build the docker image for this service on your local machine following the instructions in the config service README.

### Audit

[Datawave Audit Service](https://github.com/NationalSecurityAgency/datawave-audit-service) provides query audit capabilities for Datawave.

You will need to build the docker image for this service on your local machine following the instructions in the config service README.

### Accumulo

[Datawave Accumulo Service](https://github.com/NationalSecurityAgency/datawave-audit-service) provides REST interface for Accumulo operations.

You will need to build the docker image for this service on your local machine following the instructions in the config service README.

### Query Metric

[Query Metric Service](https://github.com/NationalSecurityAgency/datawave-query-metric-service) provides query metric capabilities for Datawave.

You will need to build the docker image for this service on your local machine following the instructions in the config service README.


## Usage

You will need to have Zookeeper, Hadoop HDFS, and Accumulo installed and running 

### Choose desired versions

Build the desired versions of each Datawave service and update the docker-compose.yml 
file and the configuration file(s) as necessary. A version number is not necessary on the image
setting if you are using the latest available version available in docker

### Start services

```docker-compose up -d```

### View and follow logs

For everything:

```docker-compose logs -f```

For a specific service:

```docker-compose logs -f audit```

### Stop services

```docker-compose down```

## User Interfaces

Consul - http://localhost:8500

Fabio - http://localhost:8000

RabbitMQ - http://localhost:15672 (u:guest p:guest)




