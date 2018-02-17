

foreach ($i in (Get-Content C:\powercli\aws\instances_id.txt)) { (Get-EC2InstanceStatus -InstanceId $i).status |select Details,Status,@{Name ="Instance ID";expr = {$i}} }