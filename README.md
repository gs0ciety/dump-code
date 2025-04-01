# dump-code

**dump-code** is a Bash script that exports the entire content of a repository into a single Markdown file. It is especially useful when you want to feed a repository’s code into a language model (LLM) for analysis, summarization, or any other processing.

## Features

- **Recursive Code Extraction:** Scans the provided repository directory recursively.
- **Exclusion Filters:** Ignores specified files (e.g., `package-lock.json`, `yarn.lock`), directories (e.g., `.git`, `node_modules`, etc.), and file extensions (e.g., image files) to avoid unwanted content.
- **Prevents Self-Inclusion:** Skips the output file if it is within the source directory to prevent infinite loops.
- **Flexible Output:** Generates the output file at a specified path or defaults to `dump.md` in the current working directory if not provided.

## Installation

### Using Make (Recommended)
If you have `make` installed, you can install **dump-code** system-wide by running:

```bash
git clone https://your-repository-url.git
cd dump-code
make install
