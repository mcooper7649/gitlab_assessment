## Starting the Cronjob Service

### Before adding this script as a job to the Crontab file, we first need to start the Crontab service, which can be done by executing the following command:

`sudo systemctl start cron`

### Running this command will start the Crontab service immediately without displaying any output on the terminal.

## Checking Cronjob Status

### Although the above command automatically starts the Crontab service, you can check the Crontab service before proceeding further by verifying its status through the following command:

`sudo systemctl status cron`

## Open Crontab File

### Once you have confirmed that the Crontab service is running properly, you can open the Crontab file to add the desired job to it, to be scheduled every hour. The Crontab file can be opened by running the following command in the terminal:

`crontab –e`

## Edit Crontab Job

### Once the Crontab file is opened, you will need to press Ctrl + O to edit it. Next, add the line highlighted in the following image to your Crontab file. In this line, the “0 \* \* \* \*” parameter will tell the Cron daemon to execute the job once every hour. We have written the path of our bash file in this line so that the Cron daemon can easily access the bash file whenever the job is executed. In the same manner, you can also add any other command that you want to be executed every hour instead of giving a file path. After adding this line, you can save this file and close it.

![alt text](https://img001.prntscr.com/file/img001/aLmD_nbzR-qeL0ydiLDKHA.png)

## Complete

### Once you close this file, the Cron daemon will automatically install the new Crontab. This way, you do not have to explicitly tell your system that you have added a new Crontab job to the Crontab file because the Cron daemon itself performs this job whenever you make any modifications to the file. Once the new Crontab file has been installed, the job will be executed every hour.
