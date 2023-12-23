# EyeTry Multi-Server Startup Script

This batch script is designed to automate the process of starting multiple servers for the EyeTry project. It streamlines the startup procedure for various components, making it convenient for developers working on the project.

## Usage

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/Alliyan732/EyeTry-servers-automated-bat-script
   ```
2. Navigate to the Script Directory:
   ```bash
   cd EyeTry-servers-automated-bat-script
   ```
3. Run the Script:
   ```bash
   ./start_servers.bat
   ```
   The script will start the EyeTry API, EyeTry Web, EyeTry Admin Panel, IPD Flask, and Face Shape Detection Flask servers.

### Server Components
EyeTry API:

Location: EyeTry-API
Command: npm start
### EyeTry Web:

Location: EyeTry-Web
Command: npm start
EyeTry Admin Panel:

Location: EyeTry-AdminDashboard
Command: npm run dev
### IPD Flask:

Location: ipd-flask
Command: python -m flask run -p 5004
### Face Shape Detection Flask:

Location: EyeTry-FaceShapeDetection
Command: flask run -p 4444

### Additional Options
Stop all servers:

Choose option 1 from the menu to stop all running servers.
Exit the Script:

Choose option 2 from the menu to exit the script.

### Note
Make sure you have the required dependencies installed for each server component.
The script utilizes the taskkill command to stop Node.js, Python, and Flask processes.
Feel free to customize the script according to your project's specific requirements. Contributions and improvements are welcome!

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

Aalliyan Alvi

## Support
If you encounter any issues or have any questions or suggestions, please feel free to open an issue. We appreciate your feedback and contributions to the project.

Email: alliyan732@gmail.com

LinkedIn: https://www.linkedin.com/in/alliyan-alvi/

Happy Coding!
