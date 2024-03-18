# Vertical Scaling - How to vertically scale an EC2 instance on Amazon Web Services (AWS) using the AWS Management Console.

## Prerequisites

- An AWS account
- Access to the AWS Management Console

## Steps

1. **Log in to AWS**: Navigate to the [AWS Management Console](https://aws.amazon.com/console/) and log in to your AWS account.

2. **Access EC2 Dashboard**: From the AWS Management Console, go to the EC2 Dashboard.

3. **Select Instance**: In the EC2 Dashboard, locate the instance you want to vertically scale and select it.

4. **Stop Instance**: In the instance management options, find the "Instance State" dropdown and select "Stop" to halt the instance.

5. **Change Instance Type**: After the instance has stopped, click on the "Actions" button, then select "Instance Settings" > "Change Instance Type".

6. **Select Desired Instance Type**: In the instance type selection menu, choose the instance type that suits your requirements. For example, select "t2.large".

7. **Apply Changes**: Confirm the instance type change and review any associated costs. Click "Apply" to proceed with the change.

8. **Start Instance**: Once the instance type change is applied, select the instance again and choose "Start" to boot up the server with the new configuration.

9. **Monitor and Verify**: After the server has started, ensure that it's functioning as expected with the new instance type. Monitor performance metrics to confirm the success of the vertical scaling operation.

10. **Cleanup (Optional)**: If desired, you can terminate the instance or revert the changes to the previous instance type.

## Conclusion

Vertical scaling allows you to adjust the computing power of individual instances to meet changing workload demands. By following these steps, you can effectively scale your EC2 instances on AWS.

