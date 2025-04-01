# dump-code 📝

> A simple Bash script to export an entire repository's codebase into a single Markdown file. Ideal for feeding into language models (LLMs) for analysis, summarization, or processing.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/platform-Linux%20%7C%20macOS-blue)](https://shields.io/)
[![Bash](https://img.shields.io/badge/Bash-%3E%3D%204.0-green)](https://www.gnu.org/software/bash/)

## Features

- 🔍 **Recursive Code Extraction:** Scans the provided repository directory recursively.
- 🛡️ **Exclusion Filters:** Ignores specific files, directories, and file types.
- 🔒 **Prevents Self-Inclusion:** Avoids infinite loops by skipping the output file if it's within the source directory.
- 📄 **Flexible Output:** Generates the output file at a specified path or defaults to `dump.md` in the current working directory.

## Installation

### Using Make (Recommended)
If you have `make` installed, you can install **dump-code** system-wide by running:

```bash
git clone https://github.com/gs0ciety/dump-code.git
cd dump-code
sudo make install
```

This command copies the script to `/usr/local/bin/dump-code` and sets the proper executable permissions. **The `sudo` command is required** because writing to `/usr/local/bin/` requires superuser privileges.

### Manual Installation
If you prefer not to use `make`, follow these steps:

1. Clone the repository or download the `dump-code` script.
2. Copy the script to a directory in your `PATH` (e.g., `/usr/local/bin/`):

   ```bash
   sudo cp bin/dump-code /usr/local/bin/dump-code
   ```

3. Make the script executable:

   ```bash
   sudo chmod +x /usr/local/bin/dump-code
   ```

## Usage

The **dump-code** command accepts the following parameters:

```bash
dump-code <source_directory> [output_file.md]
```

- `<source_directory>`: The directory containing the repository you want to export.
- `[output_file.md]`: *(Optional)* The destination file for the output. If omitted, a file named `dump.md` will be created in the current working directory.

### Examples

- Export code to a custom output file:

  ```bash
  dump-code /path/to/repo /path/to/output/output.md
  ```

- Export code using the default output filename (`dump.md`):

  ```bash
  dump-code /path/to/repo
  ```

## How It Works

- **Directory Scanning:** The script uses the `find` command to locate all files in the provided source directory.
- **Exclusion Rules:** It filters out specific files, directories, and file types (like images) as defined in the script.
- **Markdown Formatting:** For each file processed, the script adds a header with the file name and path, and wraps the file’s contents in Markdown code blocks.
- **Self-Exclusion:** It checks and skips the output file if it resides within the source directory to avoid recursive inclusion.

## Uninstallation

If you installed the script using the Makefile, you can remove it by running:

```bash
sudo make uninstall
```

This command removes **dump-code** from `/usr/local/bin/dump-code`. **The `sudo` command is required** because removing a file from `/usr/local/bin/` requires superuser privileges.

## Contributing

Contributions, improvements, and suggestions are welcome! To contribute:

1. Fork this repository.
2. Clone your forked repository.
3. Create a new branch (`git checkout -b feature/YourFeature`).
4. Commit your changes (`git commit -m 'Add new feature'`).
5. Push to your branch (`git push origin feature/YourFeature`).
6. Open a Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Contact

Feel free to reach out via:

- GitHub: [gs0ciety](https://github.com/gs0ciety)
