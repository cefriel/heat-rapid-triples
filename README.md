# rapid-triples for generating a questionnaire KG

Generate a KG of questionnaires by using a form-based interface.

### Run it locally

Build the image
```sh
docker build -f Dockerfile-build --no-cache -t cefriel/qkg-rapid-triples .
```

Run the image
```sh
docker run -p 8080:80 cefriel/qkg-rapid-triples
```

Visit http://localhost:8080/qkg-rapid-triples.

### Update online

Build the image locally and push the updated files in the `dist` folder using the `publish.sh` script.

The scripts builds the interface using the Docker container, and copies the required files in the `dist` folder running an instance of the container.
