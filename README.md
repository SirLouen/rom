
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

## Contribution

If you want to contribute to this project, you can start right away checking our [features Roadmap](https://github.com/users/SirLouen/projects/1), or if you find any bug you can send a PR for review.

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

4. **Introduction of the OBJ and ROOM Program Patch**
   - Added support for object and room programs
   - Implemented triggers for objects and rooms

### Future Plans (Roadmap, not in order of priority)

- [ ] **Implement Github Actions for Releases**
   - Implement Github Actions for automated testing and deployment
   - Add better support for continuous integration and continuous deployment
   - Launch a better versioning and changelog system

- [ ] **Improve docs and organize licensing files**
   - Update documentation for better understanding of the codebase
   - Reorganize licensing files for better compliance with new LGPL license ([check License](#license))

- [ ] **Code Refactoring and Further Directory Optimization**
   - Move area, player and gods files to a separate repository and implement a submodule
   - Refactor the codebase for better readability and maintainability
   - Implement modern C++ features for better performance and safety

- [ ] **Implement a better configuration system**
   - Implement a configuration system that allows for easier customization
   - Add support for configuration files in JSON or YAML format

- [ ] **Add proper logging and monitoring**
   - Implement a logging system that allows for better monitoring and debugging
   - Add support for log rotation and log levels

- [ ] **- Remove area files and implement a database system**
   - Consider the possibility of creating a database system to store the game data instead of using area files.

Any other suggestions are welcome!

## License

This is based the ROM 2.4b6 version of Merc 2.1 and DikuMUD base code. 

After the [release of LGPL version of DikuMUD](https://github.com/Seifert69/DikuMUD) all codebases dangling over DikuMUD original files become LGPL tansitively.
Given that there are other files that are not original DikuMUD but they are supported on them (they are not completely independent code), they also transitively become LGPL

With this even, all the changes and code added to the ROM Modernization Project are licensed also under the LGPL.

## Acknowledgements

- Sebastian Hammer, [Michael Seifert](https://github.com/Seifert69), Hans Henrik Starfeldt, Tom Madsen and Katja Nyboe for [DikuMUD](https://github.com/Seifert69/DikuMUD)
- Hatchet, Furey, and Kahn for Merc 2.1 codebase
- Russ Taylor, Geoff Wong and Brian Moore for ROM 2.4 codebase
- [Erwin S. Andreasen](https://andreasen.org) for the Copyover Patch, Multi-board note system and OLC
- Lotherius and [Aaron Vinson](https://github.com/avinson) for QuickMUD implementation
- Lope, for the Color Patch
- Markku Nylander, KERMiT and N'atas-Ha for the MOB Program Patch
- Ralgha for the OBJ and ROOM Program Patch
- [Richard "KaVir" Woolcock](https://www.blogger.com/profile/16738523963280329505) and [Greg](https://github.com/g7138580) for the MSDP and GMCP Snippets

And all the other coders who have contributed to multiple patches and snippets all over the code, if you feel you should be mentioned here, please let me know.
