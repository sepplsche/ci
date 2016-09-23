<?php
$task = "";
$branch = "";

if (isset($_GET["deploy"])) {
	$task = "deploy";
	$branch = $_GET["deploy"];
}
if (isset($_GET["undeploy"])) {
	$task = "undeploy";
	$branch = $_GET["undeploy"];
}

if (!$task || !$branch)
	return;

$dir = "";
if ($branch == "master") {}
if (substr($branch, 0, 8) === "release/") $dir = "-beta";
if ($branch == "develop") $dir = "-alpha";
if (substr($branch, 0, 8) === "feature/") $dir = "-".$branch;

shell_exec("c:/PortableGit/git-bash.exe $task.sh $branch $dir");
?>
