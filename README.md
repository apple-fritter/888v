# ConkyCam: Virtual Webcam with Conky Overlay

ConkyCam is a simple script that allows you to create a virtual webcam with a Conky overlay. It enables you to share your custom setup with friends during video conferences or streaming, adding a personalized touch to your webcam feed.

## Features

- Overlay Conky information on your webcam feed
- Customizable Conky configuration to display system stats, weather, or any other desired information
- Zero-latency streaming for a seamless experience
- Compatible with popular streaming software and video conferencing platforms

## Dynamic Overlays and Virtual Devices

ConkyCam showcases the possibilities of adding dynamic overlay content on top of a video stream and the creation of virtual devices. By combining the capabilities of `Conky`, `FFmpeg`, and `v4l2loopback`, this script demonstrates the potential for enhancing video conferencing and streaming experiences with personalized information overlays.

### Virtual Devices

ConkyCam leverages the `v4l2loopback` module to create a virtual webcam device. This virtual device appears as a regular webcam to your video conferencing or streaming software, allowing you to seamlessly integrate the Conky overlay into your live video feed. By streaming the Conky window to the virtual device, ConkyCam ensures that your overlay content is visible to others in real-time.

### Dynamic Overlays

With ConkyCam, you can seamlessly overlay Conky information onto your video stream. This dynamic overlay allows you to display various system statistics, weather updates, or any other desired information in real-time. By customizing your Conky configuration, you can create a visually appealing and informative overlay that enhances your video content.

## Prerequisites

- Ubuntu or compatible Linux distribution
- `Conky` installed and configured with your desired layout
- `FFmpeg` installed
- `v4l2loopback` module installed

## Getting Started

1. Clone this repository to your local machine or download the script.
2. Ensure that Conky is already running and displaying the desired information.
3. Modify the script if necessary, updating the path to your Conky configuration file (`.conkyrc`).
4. Make the script executable: `chmod +x conkycam.sh`.
5. Run the script: `./conkycam.sh`.

## Usage

1. Launch your preferred video conferencing or streaming software.
2. Select "ConkyCam" as your webcam source.
3. Enjoy sharing your personalized setup with others!

### Autostarting script

Open a text editor and create a new file. You can name it `conkycam.desktop`.

Add the following content to the file:

```plaintext
[Desktop Entry]
Type=Application
Name=ConkyCam
Exec=/path/to/conkycam.sh
Terminal=false
```

Replace `/path/to/conkycam.sh` with the actual path to your `conkycam.sh` script.

Save the file and exit the text editor.

Move the `conkycam.desktop` file to the appropriate directory where your distro's autostart desktop entry files are stored.

## Limitations

- The virtual webcam created by ConkyCam works only on Linux-based systems.
- Compatibility with specific video conferencing or streaming software may vary. It is recommended to test with your preferred software.
- Ensure that you have the necessary permissions to load and unload kernel modules.

## Troubleshooting

If you encounter any issues or errors while running ConkyCam, try the following steps:

1. Ensure that all prerequisites are met, including Conky, FFmpeg, and v4l2loopback module installation.
2. Check if there are any error messages in the terminal while running the script.
3. Refer to the project's GitHub repository for any known issues or open a new issue if necessary.

## Contributing

Contributions to improve ConkyCam are welcome! If you have any ideas, bug fixes, or feature suggestions, feel free to open an issue or submit a pull request.

## Flowchart
```
Start Script
|
├─ [Capture Conky Window]
|   └─ Get Conky Window ID
|
├─ [Create Virtual Webcam]
|   ├─ Load v4l2loopback module
|   │   └─ Set Virtual Webcam Name and Resolution
|   │
|   └─ Stream Conky Window to Virtual Webcam
|
End Script
```

## Security and Privacy Concerns

- Personal Information: Be cautious when sharing your screen or webcam feed, as it may unintentionally reveal personal information or sensitive content. Ensure that you review and configure the Conky overlay and any other displayed information to avoid sharing private data.
- Video Conference Privacy: When using ConkyCam for video conferences, be mindful of the participants' privacy. Make sure that you have consent from all participants before sharing your screen or webcam feed. Respect privacy settings and avoid capturing or transmitting any private or confidential information without proper authorization.
- Secure Streaming: If you plan to use ConkyCam for streaming platforms, ensure that you stream over secure connections (e.g., HTTPS) and use appropriate encryption protocols to protect your data in transit.
- Third-Party Software: Verify the security and privacy practices of any third-party software or libraries used in this project, such as Conky, FFmpeg, or v4l2loopback. Stay updated with security patches and new releases to mitigate potential vulnerabilities.
- Permissions and Access: When running ConkyCam or loading kernel modules, ensure that you have the necessary permissions and access rights. Be cautious when modifying system configurations or loading/unloading kernel modules, as it can impact the stability and security of your system.
- Secure Code Practices: If you plan to modify or extend the ConkyCam script, follow secure coding practices. Avoid hardcoding sensitive information, implement input validation, and sanitize user-supplied data to prevent vulnerabilities such as code injection or command execution.
- Update and Maintenance: Regularly update the script, dependencies, and underlying system components to address security vulnerabilities and maintain the security of your setup. Stay informed about security advisories related to the software used in ConkyCam.
- User Awareness: Educate yourself and other users about potential security and privacy risks associated with using ConkyCam. Encourage users to follow best practices, such as using strong passwords, keeping software up to date, and being cautious about sharing personal or sensitive information during video conferences or streaming sessions.

> Please note that this is a general list of security and privacy concerns and may need to be tailored to the specific aspects of your project. Consider consulting security professionals and relevant documentation to ensure comprehensive coverage of security and privacy considerations.

## Disclaimer

**This software is provided "as is" and without warranty of any kind**, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose, and noninfringement. In no event shall the authors or copyright holders be liable for any claim, damages, or other liability, whether in an action of contract, tort, or otherwise, arising from, out of, or in connection with the software or the use or other dealings in the software.

**The authors do not endorse or support any harmful or malicious activities** that may be carried out with the software. It is the user's responsibility to ensure that their use of the software complies with all applicable laws and regulations.

## License

These files are released under the [MIT License](LICENSE).
