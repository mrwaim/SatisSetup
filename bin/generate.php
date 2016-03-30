<?php
echo <<<EOT
{
  "name": "KlSandbox Repository",
  "homepage": "http://satis.klsandbox.com/",
  "repositories": [
EOT;

$stdin = fopen('php://stdin', 'r');

while(!feof($stdin)){
    $line = trim(fgets($stdin));

    if (!$line)
    {
        continue;
    }

echo <<<EOT

    {
      "type": "vcs",
      "url": "$line"
    },
EOT;
}

echo <<<EOT

    {
      "packagist" : false
    }
  ],
  "require-all": true
}

EOT;
