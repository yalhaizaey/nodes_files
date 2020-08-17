#########################################################################################################################
# CSC4006 - Research And Development Project
# Developed by: Jonathan McChesney (MEng Computer Games Development)
# Queen's University Belfast
#
# Component: runedge.sh
#
# Purpose: This script invokes a docker exec/run command. Volumes are mounted to allow access to external folders:
#			configuration folder, assets, results and aws credentials. The image keyword binds the image name to the
#			current run process. This process is run in non-interactive mode (detached), allowing for automation of 
#			the execute.sh. When finished with the current process, the container will be exit. The execute.sh script
#			is passed in as a CMD asset script. This is run on the Edge service.
#
#########################################################################################################################

#docker run --rm -v ~/defog/configs:/mnt/configs -v ~/defog/assets:/mnt/assets -v ~/defog/results:/mnt/results -v /root/.aws:/root/.aws --name psphinx psphinx ../scripts/execute.sh $1 $2

#changed by Yousef
#docker run --rm -v /home/pi/defog/configs:/mnt/configs -v /home/pi/defog/assets:/mnt/assets -v /home/pi/defog/results:/mnt/results -v /root/.aws:/root/.aws --name psphinx psphinx ../scripts/execute.sh $1 $2

docker run --rm -v /home/pi/defog/configs:/mnt/configs -v /home/pi/defog/assets:/mnt/assets -v /home/pi/defog/results:/mnt/results -v /root/.aws:/root/.aws --name $3 psphinx ../scripts/execute.sh $1 $2 $3
echo "container name is =$3, we got this from defog"

