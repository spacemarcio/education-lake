cd lambda
mkdir package
pip install --target ./package -r lambda_requirements.txt
cd package
zip -r ../lambda_function_payload.zip .
cd ..
zip -g lambda_function_payload.zip lambda_function.py
