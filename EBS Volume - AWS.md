# Create an additional EBS volume in AWS and use it on an EC2 instance

## Prerequisites

- An AWS account with access to the EC2 service.
- An existing EC2 instance running in your AWS account.

## Step 1: Create an Additional EBS Volume

1. Go to the AWS Management Console.
2. Navigate to the EC2 Dashboard.
3. In the navigation pane, under "Elastic Block Store", click on "Volumes".
4. Click on "Create Volume".
5. Fill out the form:
   - Volume Type: Select "General Purpose SSD (gp2)".
   - Size: Choose the desired size, e.g., 5 GB.
   - Availability Zone: Ensure it's the same as your EC2 instance.
6. Click "Create Volume".

## Step 2: Attach the Volume to Your EC2 Instance

1. Once the volume is created, select it from the list of volumes.
2. Click on "Actions" and then select "Attach Volume".
3. Choose the EC2 instance to which you want to attach the volume.
4. Choose the device name, or leave the default (/dev/sdf).
5. Click "Attach".

## Step 3: Format the Volume

1. SSH into your EC2 instance.
2. Identify the new volume by running `lsblk`.
3. Create a file system on the volume:
```
sudo mkfs -t ext4 /dev/xvdf
```

## Step 4: Start Using the Volume

Verify the file system:
```
sudo file -s /dev/xvdf
```

## Step 5: Mount the volume to a directory:
```
sudo mkdir /data
sudo mount /dev/xvdf /data
```




