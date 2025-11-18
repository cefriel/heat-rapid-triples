# rapid-triples for contributing to the HEAT KG

Contribute to the HEAT KG by describing a new Human Evaluation and Assessment Tool using the HEAT Ontology (https://w3id.org/heat). 
- Access the web app at https://cefriel.github.io/heat-rapid-triples/
- Fill the form and check the generated RDF triples
- Download the output and [create a new issue](https://github.com/cefriel/heat-rapid-triples/issues/new/choose) in this repository to propose the addition of the tool 

### Run it locally

Build the image
```sh
docker build -f Dockerfile-build --no-cache -t cefriel/heat-rapid-triples .
```

Run the image
```sh
docker run -p 8080:80 cefriel/heat-rapid-triples
```

Visit http://localhost:8080/heat-rapid-triples.

### Update online

Build the image locally and push the updated files in the `dist` folder using the `publish.sh` script.

The scripts builds the interface using the Docker container, and copies the required files in the `dist` folder running an instance of the container.
