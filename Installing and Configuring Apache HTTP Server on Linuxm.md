# Installing and Configuring Apache HTTP Server on Linux

## Requirements
- Linux server
- Administrative privileges

## Installation Steps

1. **Navigate to the /opt directory:** Change directory to /opt where we'll install Apache.
```
cd /opt
```   
2. **Gain administrative privileges:** Switch to the root user or use sudo for administrative privileges.
```
sudo su -
```
3. **Install Apache HTTP Server:** Use the package manager (in this case, yum) to install Apache.
```
yum install httpd -y
```

4. **Check the status of the Apache service:** Ensure that Apache is installed and its status is checked.
```
service httpd status
```
5. **Start the Apache service:** Start the Apache service if it's not running.
```
service httpd start
```

6. **Verify that the Apache service is running:** Confirm that Apache is running properly.
```
service httpd status
```

7. **Open a web browser and navigate to http://<server_ip>:80:** This step confirms that the server is accessible via a web browser.

8. **Create an HTML file using a text editor:** Use vi (a text editor) to create a basic HTML file (index.html).
```
vi index.html
```
9. **Enter HTML content:** Add some simple HTML content to the index.html file.

```
<html>
<head>
    <title>Welcome to DevOps</title>
</head>
<body>
    <h1>Welcome to DevOps</h1>
    <h2>Welcome to DevOps Learning</h2>
</body>
</html>
```
10. **Save the file and exit the text editor:** Save the changes made to index.html and exit the text editor.

11. **Access the HTML file via web browser:** Use the provided URL to access the index.html file hosted on the Apache server.

The provided HTML content will display a webpage with the title "Welcome to DevOps" and two headings: "Welcome to DevOps" and "Welcome to DevOps Learning". When accessing the server's IP address in a web browser, this HTML content will be displayed.
