
# ROM Modernization Project

A modernized version of ROM24b6/QuickMUD, restructured and updated to work with modern Linux systems and designed to be more maintainable and extensible for future development.

## Introduction

This ROM Modernization Project has been forked from the [QuickMUD project](https://github.com/avinson/rom24-quickmud), which is a modernized version of the ROM 2.4b6 codebase. The goal of this project is to restructure and update the codebase to work with modern Linux systems and to make it more maintainable and extensible for future development.

## Technical Requirements

- Docker

## Installation and Setup

1. Clone the repository:
```bash
git clone https://github.com/Sirlouen/rom.git
cd rom
```

2. Create necessary directories:
```bash
docker compose up -d
```

3. Connect:
Now you can connect to the MUD using a MUD client or telnet, through the port 4000
You are shipped by default with the first immortal account by default. 
It's a level 60 Immortal named `Shemp` is included with a password of `psswrd`.

## Recent Changes

### Directory Structure
The codebase has been reorganized for better maintainability:

rom/

├── area/ # Game areas and configuration

├── bin/ # Executables

│ ├── rom

│ └── startup

├── doc/ # Documentation and Licensing

├── gods/ # Immortal data

├── imc/ # IMC2 files

├── log/ # Server logs

├── player/ # Player files

└── src/ # Source code

### First Updates
1. **Path Restructuring**
   - Moved executables to `bin/` directory
   - Updated all relative paths
   - Fixed path resolution issues

2. **Bug Fixes**
   - Fixed FNDELAY deprecated flag with O_NONBLOCK
   - Resolved segmentation faults in configuration loading
   - Fixed copyover functionality
   - Updated socket handling

3. **Code Modernization**
   - Updated deprecated system calls
   - Enhanced error handling
   - Improved memory management
   - Added debug logging capabilities

### Future Plans

1. **Code Refactoring**
   - Refactor the codebase for better readability and maintainability
   - Implement modern C++ features for better performance and safety

2. **Implement a better configuration system**
   - Implement a configuration system that allows for easier customization
   - Add support for configuration files in JSON or YAML format

3. **Add proper loggin and monitoring**
   - Implement a logging system that allows for better monitoring and debugging
   - Add support for log rotation and log levels

Any other suggestions are welcome!

## License

This is based the ROM 2.4b6 version of Merc 2.1 and DikuMUD base code. Please read the licensing in the doc directory for more information.

All the changes and code added to the ROM Modernization Project are licensed under the MIT License.

## Acknowledgements

- Sebastian Hammer, Michael Seifert, Hans Henrik Starfeldt, Tom Madsen and Katja Nyboe for DikuMUD
 - Hatchet, Furey, and Kahn for Merc 2.1 codebase
- Russ Taylor, Geoff Wong and Brian Moore for ROM 2.4 codebase
- Erwin S. Andreasen for the Copyover Patch, Noteboard AND OLC
- Lotherius for QuickMUD implementation
- Lope, for the Color Patch
- M. Nylander for the MOBProgram Patch
- All the other coders who have contributed to multiple patches and snippets all over the code, if you feel you should be mentioned here, please let me know.