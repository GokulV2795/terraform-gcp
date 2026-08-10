import yaml
files = ['.github/workflows/terraform-ci.yml', 'cloudbuild.yaml']
for f in files:
    try:
        with open(f, 'r', encoding='utf-8') as fh:
            yaml.safe_load(fh)
        print(f + ': OK')
    except Exception as e:
        print(f + ': PARSE ERROR ->', e)
