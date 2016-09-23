<?php
$task = isset($_GET["task"]) ? $_GET["task"] : "";
$branch = isset($_GET["branch"]) ? $_GET["branch"] : "";
$dir = isset($_GET["dir"]) ? $_GET["dir"] : "";

if (!$task || !$branch)
	return;

shell_exec("c:/PortableGit/git-bash.exe $task.sh $branch $dir");
?>
