## 🚀 Deployment

This project is automatically deployed to AWS using:

- GitHub Actions + Terraform
- EC2 Instance with Docker container
- Runs the image: `taltal1131/devops-full-app:latest`

To trigger deployment, simply push to the `main` branch.

### Output

After deployment, you can access your app at:

```bash
http://<EC2_PUBLIC_IP>:3000
