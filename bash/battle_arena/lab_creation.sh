#!/bin/bash

# Bash Scripting Game - Complete File Structure Setup
# This script creates all directories and files needed for the 15-level game

echo "🎮 Setting up Bash Scripting Game Environment..."
echo "================================================"

# Create main game directory
mkdir -p BashScriptingGame
cd BashScriptingGame

echo "📁 Creating main game directory structure..."

# Create directories for each level
mkdir -p {Level1,Level2,Level3,Level4,Level5,Level6,Level7,Level8,Level9,Level10,Level11,Level12,Level13,Level14,Level15}

# Create sample directories and files that players will work with
mkdir -p GameData/{SampleLogs,ConfigFiles,TestFiles}

echo "📝 Creating sample files for practice..."

# Level 6: Create test files with different line counts
echo -e "Line 1\nLine 2\nLine 3\nLine 4\nLine 5" > GameData/TestFiles/small.txt
echo -e "$(for i in {1..25}; do echo "Test line $i"; done)" > GameData/TestFiles/medium.txt
echo -e "$(for i in {1..100}; do echo "Data line $i with some content"; done)" > GameData/TestFiles/large.txt

# Level 7: Create files of different sizes for sorting practice
echo "Small file content" > GameData/TestFiles/file_small.txt
echo -e "$(for i in {1..10}; do echo "Medium file content line $i"; done)" > GameData/TestFiles/file_medium.txt
echo -e "$(for i in {1..50}; do echo "Large file content with more data on line $i"; done)" > GameData/TestFiles/file_large.txt
echo "Tiny" > GameData/TestFiles/file_tiny.txt

# Level 8: Create log files with searchable content
cat > GameData/SampleLogs/system.log << 'EOF'
2024-01-15 10:30:15 INFO System startup completed
2024-01-15 10:30:20 DEBUG Loading configuration files
2024-01-15 10:30:25 ERROR Failed to connect to database
2024-01-15 10:30:30 INFO Retrying database connection
2024-01-15 10:30:35 INFO Database connected successfully
2024-01-15 10:30:40 WARN High memory usage detected
2024-01-15 10:30:45 INFO User authentication successful
EOF

cat > GameData/SampleLogs/application.log << 'EOF'
2024-01-15 11:00:01 INFO Application started
2024-01-15 11:00:05 DEBUG Processing user request
2024-01-15 11:00:10 ERROR Invalid user input received
2024-01-15 11:00:15 INFO Request processed successfully
2024-01-15 11:00:20 WARN Cache is nearly full
2024-01-15 11:00:25 INFO Cache cleared automatically
EOF

cat > GameData/SampleLogs/security.log << 'EOF'
2024-01-15 12:00:00 INFO Security scan initiated
2024-01-15 12:00:05 WARN Suspicious activity detected
2024-01-15 12:00:10 ERROR Unauthorized access attempt
2024-01-15 12:00:15 INFO Access denied for user guest
2024-01-15 12:00:20 INFO Security scan completed
2024-01-15 12:00:25 DEBUG No threats found
EOF

# Level 10: Create files with Victory content for boss battle
mkdir -p GameData/TestFiles/BossContent
echo -e "$(for i in {1..15}; do echo "Random content line $i"; done)\nVictory achieved!\nMore content here" > GameData/TestFiles/BossContent/victory1.txt
echo -e "$(for i in {1..20}; do echo "Test data $i"; done)" > GameData/TestFiles/BossContent/normal1.txt
echo -e "$(for i in {1..12}; do echo "Sample line $i"; done)\nThe Victory is ours!\nFinal lines" > GameData/TestFiles/BossContent/victory2.txt

# Level 12: Create configuration files
cat > GameData/ConfigFiles/settings.conf << 'EOF'
# Game Configuration File
SERVER_HOST=localhost
SERVER_PORT=8080
DATABASE_URL=mysql://localhost:3306/gamedb
MAX_CONNECTIONS=100
DEBUG_MODE=true
LOG_LEVEL=INFO
BACKUP_ENABLED=yes
BACKUP_INTERVAL=24
ADMIN_EMAIL=admin@example.com
GAME_VERSION=1.0.0
EOF

cat > GameData/ConfigFiles/database.conf << 'EOF'
# Database Configuration
DB_TYPE=postgresql
DB_HOST=127.0.0.1
DB_PORT=5432
DB_NAME=game_database
DB_USER=gameuser
DB_PASSWORD=secretpassword
CONNECTION_POOL_SIZE=50
TIMEOUT=30
SSL_ENABLED=false
EOF

# Level 13: Create sample directory for backup practice
mkdir -p GameData/SampleArena
echo "Warrior stats: Strength 100, Health 200" > GameData/SampleArena/warrior.txt
echo "Mage stats: Magic 150, Mana 250" > GameData/SampleArena/mage.txt
echo "Archer stats: Agility 120, Arrows 50" > GameData/SampleArena/archer.txt
echo "Game rules and instructions" > GameData/SampleArena/rules.txt

# Create level instructions and solution templates
echo "📋 Creating level instructions and templates..."

# Level 1 Instructions
cat > Level1/README.md << 'EOF'
# Level 1: The Basics

## Mission
Create a directory named `Arena` and then inside it, create three files: `warrior.txt`, `mage.txt`, and `archer.txt`. List the contents of the `Arena` directory.

## Skills Practiced
- Directory creation (`mkdir`)
- File creation (`touch`)
- Directory listing (`ls`)

## Expected Output
```
Arena/
├── archer.txt
├── mage.txt
└── warrior.txt
```

## Hints
- Use `mkdir` to create directories
- Use `touch` to create empty files
- Use `ls` to list directory contents
EOF

# Level 2 Instructions
cat > Level2/README.md << 'EOF'
# Level 2: Variables and Loops

## Mission
Create a script that outputs the numbers 1 to 10, one number per line.

## Skills Practiced
- For loops
- Number sequences
- Variable usage

## Expected Output
```
1
2
3
4
5
6
7
8
9
10
```

## Hints
- Use `for i in {1..10}` or `for ((i=1; i<=10; i++))`
- Use `echo` to print each number
EOF

# Level 3 Instructions
cat > Level3/README.md << 'EOF'
# Level 3: Conditional Statements

## Mission
Write a script that checks if a file named `hero.txt` exists in the `Arena` directory. If it does, print `Hero found!`; otherwise, print `Hero missing!`.

## Skills Practiced
- File existence testing (`-f`)
- Conditional statements (`if/else`)
- Path handling

## Expected Output
```
Hero missing!
```
(or "Hero found!" if the file exists)

## Hints
- Use `if [ -f "Arena/hero.txt" ]`
- Remember the `then` and `fi` keywords
EOF

# Create solution templates for instructors
mkdir -p Solutions

cat > Solutions/level1_solution.sh << 'EOF'
#!/bin/bash
# Level 1 Solution

mkdir Arena
cd Arena
touch warrior.txt mage.txt archer.txt
ls -la
EOF

cat > Solutions/level2_solution.sh << 'EOF'
#!/bin/bash
# Level 2 Solution

for i in {1..10}; do
    echo $i
done
EOF

cat > Solutions/level3_solution.sh << 'EOF'
#!/bin/bash
# Level 3 Solution

if [ -f "Arena/hero.txt" ]; then
    echo "Hero found!"
else
    echo "Hero missing!"
fi
EOF

cat > Solutions/level4_solution.sh << 'EOF'
#!/bin/bash
# Level 4 Solution

mkdir -p Backup
cp Arena/*.txt Backup/
echo "Files copied to Backup directory"
ls Backup/
EOF

cat > Solutions/level5_boss_solution.sh << 'EOF'
#!/bin/bash
# Level 5 Boss Battle Solution

# 1. Create Battlefield directory
mkdir Battlefield
cd Battlefield

# 2. Create the three files
touch knight.txt sorcerer.txt rogue.txt

# 3. Check if knight.txt exists and move it
if [ -f "knight.txt" ]; then
    mkdir ../Archive
    mv knight.txt ../Archive/
fi

# 4. List contents
echo "Battlefield contents:"
ls
echo "Archive contents:"
ls ../Archive/
EOF

# Create a game launcher script
cat > game_launcher.sh << 'EOF'
#!/bin/bash

# Bash Scripting Game Launcher
echo "🎮 Welcome to the Bash Scripting Game!"
echo "====================================="
echo ""
echo "Available Levels:"
echo "1. Level 1: The Basics"
echo "2. Level 2: Variables and Loops"
echo "3. Level 3: Conditional Statements"
echo "4. Level 4: File Manipulation"
echo "5. Level 5: Boss Battle - Combining Basics"
echo "6. Level 6: Argument Parsing"
echo "7. Level 7: File Sorting Script"
echo "8. Level 8: Multi-File Searcher"
echo "9. Level 9: Directory Monitoring"
echo "10. Level 10: Boss Battle 2 - Intermediate Scripting"
echo "11. Level 11: Disk Space Report"
echo "12. Level 12: Configuration File Parser"
echo "13. Level 13: Backup Script with Rotation"
echo "14. Level 14: User-Friendly Menu Script"
echo "15. Level 15: Boss Battle 3 - Advanced Scripting"
echo ""
echo "📁 Game data and sample files are available in the GameData directory"
echo "📚 Check each Level directory for instructions and README files"
echo "🔧 Solution templates are available in the Solutions directory"
echo ""
echo "Good luck, and happy scripting! 🚀"
EOF

chmod +x game_launcher.sh

# Create a progress tracker
cat > progress_tracker.txt << 'EOF'
# Bash Scripting Game Progress Tracker

## Completed Levels
[ ] Level 1: The Basics
[ ] Level 2: Variables and Loops
[ ] Level 3: Conditional Statements
[ ] Level 4: File Manipulation
[ ] Level 5: Boss Battle - Combining Basics
[ ] Level 6: Argument Parsing
[ ] Level 7: File Sorting Script
[ ] Level 8: Multi-File Searcher
[ ] Level 9: Directory Monitoring
[ ] Level 10: Boss Battle 2 - Intermediate Scripting
[ ] Level 11: Disk Space Report
[ ] Level 12: Configuration File Parser
[ ] Level 13: Backup Script with Rotation
[ ] Level 14: User-Friendly Menu Script
[ ] Level 15: Boss Battle 3 - Advanced Scripting

## Notes
- Mark completed levels with [x]
- Add your completion time and any notes
- Track your personal best solutions
EOF

echo ""
echo "✅ Game environment setup complete!"
echo ""
echo "📁 Directory structure created:"
echo "   - 15 Level directories (Level1/ through Level15/)"
echo "   - GameData/ with sample files for practice"
echo "   - Solutions/ with instructor reference implementations"
echo ""
echo "🎯 Key features:"
echo "   - Sample log files for search practice"
echo "   - Configuration files for parsing exercises"
echo "   - Test files of various sizes"
echo "   - Progress tracking system"
echo ""
echo "🚀 To start playing:"
echo "   1. cd BashScriptingGame"
echo "   2. ./game_launcher.sh"
echo "   3. Choose your level and start scripting!"
echo ""
echo "Happy learning! 🎮"
