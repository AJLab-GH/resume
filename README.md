# Resume

Welcome to the **Resume** Repository! This project automates the process of generating polished, themed PDF resumes using structured data from `resume.json`. The entire workflow is driven by GitHub Actions, ensuring that your resumes are always up-to-date with minimal manual effort.

## Overview

This repository leverages the power of GitHub Actions to build multiple PDF resumes based on the data found in `resume.json`. The themes used for these resumes are defined in `themes.json`, making it easy to switch between different designs.

### How It Works

1. **Data-Driven Resumes**: The `resume.json` file serves as the single source of truth for your resume content. It follows a schema that is compatible with various themes listed in `themes.json`.

2. **Automated Workflow**: Every time a change is committed to the `main` branch, a GitHub Action is triggered. This action automates the entire process:
   - Installs the necessary packages and themes.
   - Generates PDF and HTML resumes for each theme specified in `themes.json`.
   - Commits the generated resumes back to the `main` branch, neatly organized in the `outputs/pdf` and `outputs/html` folders.

3. **Collaboration Made Simple**: This setup allows collaborators to focus solely on updating `resume.json`. There's no need to worry about the underlying automation, making it easier for anyone to contribute without needing in-depth knowledge of the build process.

## Security Considerations: Moving `doit.sh` to GitHub Actions

Initially, the `doit.sh` script was used to automate the process of generating resumes. However, the libraries used by the script, including Puppeteer, posed certain security risks:

- **Insecure Dependencies**: Some of the libraries used in the script had vulnerabilities that could compromise the security of the system running the script. These outdated libraries needed constant attention to keep them secure.
  
- **Puppeteer and `--no-sandbox` Flag**: Puppeteer, a tool used for generating PDF files, required the `--no-sandbox` flag to run in certain environments like Docker or CI/CD pipelines. While this flag allows Puppeteer to run in restricted environments, it also disables some security features, making it less safe.

### Why Move the Script to GitHub Actions?

Given these security concerns, we decided to move the logic of `doit.sh` directly into a GitHub Action workflow. This approach offers several advantages:

- **Safer Execution Environment**: By running the script in GitHub Actions, we leverage a secure, isolated environment provided by GitHub. This reduces the risk of exposing insecure dependencies on local machines or servers.
  
- **Automated Dependency Management**: GitHub Actions automatically handles the setup and installation of dependencies each time the workflow runs. This ensures that the latest, most secure versions of libraries are used without requiring manual updates.
  
- **Centralized Workflow**: Moving the script into the GitHub Action centralizes the automation, making it easier to manage and audit. All logic is contained within the workflow file, reducing the complexity and improving maintainability.

### The Safer, Modern Approach

By integrating the `doit.sh` logic into the GitHub Action, we not only improve security but also streamline the automation process. This modern approach ensures that your resumes are generated in a safe, controlled environment with the latest tools, reducing the risk of vulnerabilities and simplifying the overall workflow.

## Getting Started

To make the most of this repository, you'll need to ensure that GitHub Actions has the necessary permissions:

1. **Read/Write Access**: GitHub Actions must have read and write access to your repository. This is crucial for committing the generated resumes back to the repository.
   
2. **PR Creation**: Enable GitHub Actions to create pull requests (PRs) if you prefer to review changes before merging them into the `main` branch.

## Why This Approach?

This repository is inspired by [rmordasiewicz's approach](https://github.com/rmordasiewicz). The key idea is to separate content from design and automation. By centralizing content in `resume.json` and automating the generation process, we reduce the need for technical knowledge and make collaboration more accessible.

- **Focus on Content**: Spend less time on technical details and more time perfecting the content of your resume.
- **Consistency**: Ensure that all themed resumes are consistently updated with the latest information.
- **Efficiency**: Automate repetitive tasks, so you can focus on what matters most.

## Contributing

Contributions are welcome! If you have suggestions for improving the workflow, adding new themes, or enhancing the documentation, feel free to open a pull request.

## License

This project is open-source and available under the [MIT License](LICENSE).
