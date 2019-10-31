# KILPS

`klips` is a collection of script utils for video manipulation.

## Installation

Clone this repository

```bash
git clone https://github.com/specialgee/klips.git
```

Add scripts to your shell configuration file (`.bashrc`, `.zshrc`) i.e.

```bash
source "/path/to/your/script.sh"
```

## Usage

### gif

extract gif from video

```markdown
gif [input] [output] [start] [end] [fps] [width]

-input        video input path
-output       gif output path
-start        start time in seconds/timestamp
-end          end time in duration/timestamp
-fps          framerate
-width        output image width
```

### chop

chop input output start end fps width

```markdown
chop [input] [output] [start] [end] [fps] [width]

-input        video input path
-output       video output path
-start        start time in seconds/timestamp
-end          end time in duration/timestamp
-fps          framerate
-width        output video width
```

### vx

transform a video file with 16:9 aspect ratio into 4:3

```markdown
vx [input] [output]

-input        file input path
-output       file output path
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[GNU GPLv3]( https://www.gnu.org/licenses/gpl-3.0.en.html )