<?php
 $config = array(
'DB_TYPE' => 'mysql',
'DB_HOST' => '127.0.0.1',
'DB_NAME' => 'phprap',
'DB_USER' => 'phprap',
'DB_PWD' => 'MYDAjL6zA5bn2dBf',
'DB_PORT' => '3306',
'DB_PREFIX' => 'pes_',
'SQL_MODEL' => 'STRICT_TRANS_TABLES',
'PRIVATE_KEY' => 'a2ac6a92bb',
'USER_KEY' => '72aa0b6953',
'ERROR_PROMPT' => '/Core/Theme/error.php',
'APP_GROUP_LIST' => 'Doc,Create',
'DEFAULT_GROUP' => 'Doc',
'FILE_CACHE_PATH' => '/Temp',
'FILE_CACHE_TIME' => '1800',
'LOG_PATH' => '/log',
'LOG_DELETE' => '7',
'UPLOAD_PATH' => '/upload',
'SESSION_ID' => 'PESDOCSESSION',
'URLMODEL' => array(
'INDEX' => '0',
'SUFFIX' => '1',
),);
$configPath = dirname(__FILE__) . '/Config/';
$configFile = scandir($configPath);
//长度少于等于2结束植入检测.
if (count($configFile) <= '2') {
    return $config;
}

foreach ($configFile as $value) {
    if ($value != '.' && $value != '..' && $value != '.DS_Store') {
        $tmpArray = require $configPath . $value;
        if (is_array($tmpArray)) {
            $config['APP_GROUP_LIST'] = empty($tmpArray['GROUP']) ? $config['APP_GROUP_LIST'] : "{$config['APP_GROUP_LIST']},{$tmpArray['GROUP']}";
            $config = array_merge($config, $tmpArray);
        }
    }
}
return $config;
