## Creating and Running a Shell Script

Follow these steps to create and run a shell script:

1. **Open a Text Editor**: Use any text editor to write your shell script. You can use `nano`, `vim`, `VSCode`, or any other editor you prefer.

2. **Write Your Script**:
   - Start by defining the interpreter on the first line using a shebang (`#!`). For bash scripts, use `#!/bin/bash`.
   - Write the commands you want your script to execute, each on a separate line.
   - Add comments to explain the purpose of different parts of your script (comments start with `#`).

3. **Save Your Script**: Save the script with a `.sh` extension, for example, `myscript.sh`.

4. **Make the Script Executable**: In your terminal, navigate to the directory where your script is saved and run the following command:
   ```bash
   chmod +x myscript.sh
