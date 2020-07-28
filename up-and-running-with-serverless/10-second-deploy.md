Deploy with the command we used earlier, again replacing `stage-name` with the name you used in the last deploy.

```bash
sls deploy --stage <stage-name>
```

And again run this script to test posting the image to our service:

```bash
./upload.sh "<stage-name>" testimage.jpg
```
