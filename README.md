# Resume Automation Repository

Welcome to the **Resume Automation Repository**! This project automates the process of generating polished, themed PDF resumes using structured data from `resume.json`. The entire workflow is driven by GitHub Actions, ensuring that your resumes are always up-to-date with minimal manual effort.

## Overview

This repository leverages the power of GitHub Actions to build multiple PDF resumes based on the data found in `resume.json`. The themes used for these resumes are defined in `themes.json`, making it easy to switch between different designs.

### How It Works

1. **Data-Driven Resumes**: The `resume.json` file serves as the single source of truth for your resume content. It follows a schema that is compatible with various themes listed in `themes.json`.

2. **Automated Workflow**: Every time a change is committed to the `main` branch, a GitHub Action is triggered. This action automates the entire process:
   - Installs the necessary packages and themes.
   - Generates PDF and HTML resumes for each theme specified in `themes.json`.
   - Commits the generated resumes back to the `main` branch, neatly organized in the `outputs/pdf` and `outputs/html` folders.

3. **Collaboration Made Simple**: This setup allows collaborators to focus solely on updating `resume.json`. There's no need to worry about the underlying automation, making it easier for anyone to contribute without needing in-depth knowledge of the build process.

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

