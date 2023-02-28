/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : doc

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 28/02/2023 15:20:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pes_article
-- ----------------------------
DROP TABLE IF EXISTS `pes_article`;
CREATE TABLE `pes_article`  (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_mark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章的唯一标记',
  `article_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `article_parent` int(11) NOT NULL COMMENT '文章父类',
  `article_doc_id` int(11) NOT NULL COMMENT '文章对应的文档目录ID',
  `article_version` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '版本号',
  `article_time` int(11) NOT NULL,
  `article_update_time` int(11) NOT NULL COMMENT '更新时间',
  `article_listsort` int(11) NOT NULL,
  `article_node` tinyint(1) NOT NULL COMMENT '是否节点 0:文章 1:节点 2:外链',
  `article_status` tinyint(4) NOT NULL COMMENT '状态',
  `article_view` int(11) NOT NULL COMMENT '文章查看次数',
  `article_like` int(11) NOT NULL COMMENT '点赞次数',
  `article_external_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '外链地址',
  PRIMARY KEY (`article_id`) USING BTREE,
  INDEX `article_mark`(`article_mark`) USING BTREE,
  INDEX `article_doc_id`(`article_doc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文档文章基础表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_article
-- ----------------------------
INSERT INTO `pes_article` VALUES (1, '471154698456399872', '111', 0, 1, '1', 1677554921, 0, 0, 1, 1, 0, 0, '');
INSERT INTO `pes_article` VALUES (4, '471160390588301312', '添加权限', 4, 2, '1.0', 1677556278, 1677556303, 0, 1, 1, 0, 0, '');
INSERT INTO `pes_article` VALUES (5, '471160671065604096', '添加管理', 5, 2, '1.0', 1677556345, 1677556366, 0, 1, 1, 0, 0, '');
INSERT INTO `pes_article` VALUES (6, '471161051417673728', '123', 0, 2, '1.0', 1677556436, 1677556445, 0, 1, 1, 0, 0, '');
INSERT INTO `pes_article` VALUES (7, '471161176680562688', '权限管理', 0, 2, '1.0', 1677556466, 1677556506, 0, 1, 1, 0, 0, '');
INSERT INTO `pes_article` VALUES (8, '471161249216856064', '添加权限', 7, 2, '1.0', 1677556483, 1677556536, 0, 0, 1, 24, 0, '');
INSERT INTO `pes_article` VALUES (10, '471180034258763776', '权限列表', 7, 2, '1.0', 1677560962, 0, 0, 0, 1, 15, 1, '');
INSERT INTO `pes_article` VALUES (11, '471209408718700544', '2123', 1, 1, '1', 1677567965, 0, 0, 0, 1, 5, 0, '');

-- ----------------------------
-- Table structure for pes_article_content
-- ----------------------------
DROP TABLE IF EXISTS `pes_article_content`;
CREATE TABLE `pes_article_content`  (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `article_content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细内容',
  `article_content_md` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'MD文档保留的格式',
  `article_content_editor` tinyint(1) NOT NULL COMMENT '使用的编辑器 0: HTML 1: MD',
  `article_keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article_description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article_content_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`content_id`) USING BTREE,
  INDEX `article_id`(`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_article_content
-- ----------------------------
INSERT INTO `pes_article_content` VALUES (1, 1, '', '', 0, '', '', 1677554921);
INSERT INTO `pes_article_content` VALUES (2, 2, '', '', 0, '', '', 1677554933);
INSERT INTO `pes_article_content` VALUES (3, 3, '<h2>单元测验列表</h2>\r\n<blockquote>\r\n<p>Author：txh<br />\r\n请求方式：GET<br />\r\n接口地址：{url}/precise21/Shustage/rep_s3</p>\r\n</blockquote>\r\n<br>\r\n<h4>Request Headers</h4>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>参数</th>\r\n<th>说明</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Content-Type</td>\r\n<td>application/json</td>\r\n</tr>\r\n<tr>\r\n<td>Accesskey</td>\r\n<td>产品accesskey</td>\r\n</tr>\r\n<tr>\r\n<td>X-TOKEN</td>\r\n<td>登录返回的 access_token</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br>\r\n<h4>Request Body</h4>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>参数名</th>\r\n<th>参数类型</th>\r\n<th>必传</th>\r\n<th>缺省值</th>\r\n<th>描述</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>source_type</td>\r\n<td>int</td>\r\n<td>Y</td>\r\n<td>1</td>\r\n<td>来源：1-公版，2小度</td>\r\n</tr>\r\n<tr>\r\n<td>global_tag</td>\r\n<td>int</td>\r\n<td>Y</td>\r\n<td>2</td>\r\n<td>标签类型:2-2023年</td>\r\n</tr>\r\n<tr>\r\n<td>report_id</td>\r\n<td>int</td>\r\n<td>Y</td>\r\n<td></td>\r\n<td>测试id</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br>\r\n<h4>Request Body 参数json示例</h4>\r\n<pre><code>{\r\n	&quot;report_id&quot;: 1\r\n}\r\n</code></pre>\r\n<br>\r\n<h5>状态码说明</h5>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>状态码</th>\r\n<th>说明</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>200</td>\r\n<td>ok</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h4>data返回参数</h4>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>参数</th>\r\n<th>参数类型</th>\r\n<th>说明</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>list</td>\r\n<td>array</td>\r\n<td>知识点列表</td>\r\n</tr>\r\n<tr>\r\n<td>├─ score</td>\r\n<td>int</td>\r\n<td>掌握度</td>\r\n</tr>\r\n<tr>\r\n<td>├─ knowledge_name</td>\r\n<td>string</td>\r\n<td>考察知识点名称</td>\r\n</tr>\r\n<tr>\r\n<td>├─ catalog_name</td>\r\n<td>string</td>\r\n<td>关联课时</td>\r\n</tr>\r\n<tr>\r\n<td>├─ mastery_str</td>\r\n<td>int</td>\r\n<td>出题数量</td>\r\n</tr>\r\n<tr>\r\n<td>├─ tihao</td>\r\n<td>int</td>\r\n<td>题号</td>\r\n</tr>\r\n<tr>\r\n<td>├─ question_count</td>\r\n<td>int</td>\r\n<td>正确率</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br>\r\n<h5>返回示例</h5>\r\n<pre><code>HTTP/1.1 200 OK\r\nDate: Tue, 19 Jan 2021 02:32:03 GMT\r\nAccess-Control-Allow-Origin: *\r\nAccess-Control-Allow-Credentials: true\r\nContent-Type: application/json; charset=utf-8\r\n\r\n{\r\n	&quot;code&quot;: 200,\r\n	&quot;msg&quot;: &quot;ok&quot;,\r\n	&quot;data&quot;: {\r\n            &quot;list&quot;: [{\r\n			&quot;score&quot;: 2,\r\n			&quot;knowledge_name&quot;: &quot;三拼法&quot;,\r\n			&quot;catalog_name&quot;: &quot;第六单元 认识图形&quot;,\r\n			&quot;mastery_str&quot;: 67,\r\n			&quot;tihao&quot;: &quot;1/2/3/4&quot;,\r\n			&quot;question_count&quot;: 67,\r\n		}]\r\n	&quot;time&quot;: &quot;2021-07-28 16:38:55&quot;\r\n}\r\n</code></pre>', '## 单元测验列表\r\n\r\n> Author：txh\r\n> 请求方式：GET\r\n> 接口地址：{url}/precise21/Shustage/rep_s3\r\n\r\n<br>\r\n\r\n#### Request Headers\r\n\r\n| 参数 | 说明 |\r\n| --- | --- |\r\n| Content-Type | application/json |\r\n| Accesskey | 产品accesskey |\r\n| X-TOKEN | 登录返回的 access_token |\r\n\r\n<br>\r\n\r\n#### Request Body\r\n\r\n| 参数名 | 参数类型 | 必传 | 缺省值 | 描述 |\r\n| --- | --- | --- | --- | --- |\r\n| source_type | int | Y | 1 | 来源：1-公版，2小度 |\r\n| global_tag | int | Y | 2 | 标签类型:2-2023年 |\r\n| report_id | int | Y |  | 测试id |\r\n\r\n<br>\r\n\r\n#### Request Body 参数json示例\r\n\r\n```\r\n{\r\n	\"report_id\": 1\r\n}\r\n```\r\n\r\n<br>\r\n\r\n##### 状态码说明\r\n\r\n| 状态码 | 说明 |\r\n| --- | --- |\r\n| 200 | ok |\r\n\r\n#### data返回参数\r\n\r\n| 参数 | 参数类型 | 说明 |\r\n| --- | --- | --- |\r\n| list | array | 知识点列表 |\r\n| ├─ score | int | 掌握度 |\r\n| ├─ knowledge_name| string | 考察知识点名称 |\r\n| ├─ catalog_name| string | 关联课时 |\r\n| ├─ mastery_str | int | 出题数量 |\r\n| ├─ tihao | int | 题号 |\r\n| ├─ question_count | int | 正确率 |\r\n\r\n<br>\r\n\r\n##### 返回示例\r\n\r\n```\r\nHTTP/1.1 200 OK\r\nDate: Tue, 19 Jan 2021 02:32:03 GMT\r\nAccess-Control-Allow-Origin: *\r\nAccess-Control-Allow-Credentials: true\r\nContent-Type: application/json; charset=utf-8\r\n\r\n{\r\n	\"code\": 200,\r\n	\"msg\": \"ok\",\r\n	\"data\": {\r\n            \"list\": [{\r\n			\"score\": 2,\r\n			\"knowledge_name\": \"三拼法\",\r\n			\"catalog_name\": \"第六单元 认识图形\",\r\n			\"mastery_str\": 67,\r\n			\"tihao\": \"1/2/3/4\",\r\n			\"question_count\": 67,\r\n		}]\r\n	\"time\": \"2021-07-28 16:38:55\"\r\n}\r\n```', 1, '', '', 1677555100);
INSERT INTO `pes_article_content` VALUES (4, 4, '', '', 0, '', '', 1677556303);
INSERT INTO `pes_article_content` VALUES (5, 5, '', '', 0, '', '', 1677556366);
INSERT INTO `pes_article_content` VALUES (6, 6, '', '', 0, '', '', 1677556445);
INSERT INTO `pes_article_content` VALUES (7, 7, '', '', 0, '', '', 1677556506);
INSERT INTO `pes_article_content` VALUES (8, 8, '<h2>权限列表</h2>\r\n<blockquote>\r\n<p>Author:lixiaoming</p>\r\n</blockquote>\r\n<p><strong>请求类型：</strong> POST<br />\r\n<strong>接口地址：</strong> {url}/api/member/api/list_auth</p>\r\n<p><strong>params参数：</strong></p>\r\n<pre><code>{\r\n    &quot;code&quot;:200,\r\n    &quot;msg&quot;:&quot;ok&quot;,\r\n    &quot;data&quot;:{\r\n        &quot;total&quot;:3,\r\n        &quot;list&quot;:[\r\n            {\r\n                &quot;id&quot;:3,\r\n                &quot;name&quot;:&quot;首页&quot;,\r\n                &quot;pid&quot;:0,\r\n                &quot;web_url&quot;:&quot;/&quot;,\r\n                &quot;api_url&quot;:&quot;/&quot;,\r\n                &quot;icon_class&quot;:&quot;&quot;,\r\n                &quot;is_menu&quot;:1,\r\n                &quot;level&quot;:1,\r\n                &quot;auth_path&quot;:&quot;3&quot;,\r\n                &quot;sort&quot;:0,\r\n                &quot;status&quot;:1,\r\n                &quot;del&quot;:1\r\n            },\r\n            {\r\n                &quot;id&quot;:5,\r\n                &quot;name&quot;:&quot;资源分类&quot;,\r\n                &quot;pid&quot;:7,\r\n                &quot;web_url&quot;:&quot;/home/category/Api/studysession_list&quot;,\r\n                &quot;api_url&quot;:&quot;/api/category/Api/studysession_list&quot;,\r\n                &quot;icon_class&quot;:&quot;&quot;,\r\n                &quot;is_menu&quot;:1,\r\n                &quot;level&quot;:2,\r\n                &quot;auth_path&quot;:&quot;7,5&quot;,\r\n                &quot;sort&quot;:0,\r\n                &quot;status&quot;:1,\r\n                &quot;del&quot;:1\r\n            }\r\n        ]\r\n    },\r\n    &quot;time&quot;:&quot;2020-12-07 19:30:35&quot;\r\n}\r\n</code></pre>\r\n<p>失败返回：</p>\r\n<pre><code>{  \r\n&quot;code&quot;:errCode,  \r\n&quot;msg&quot;:&quot;err&quot;,  \r\n}\r\n</code></pre>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>状态码</th>\r\n<th>提示信息</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>200</td>\r\n<td>成功</td>\r\n</tr>\r\n<tr>\r\n<td>500</td>\r\n<td>系统繁忙，请稍后再试~</td>\r\n</tr>\r\n<tr>\r\n<td>10001</td>\r\n<td>数据校验失败</td>\r\n</tr>\r\n</tbody>\r\n</table>', '## 权限列表\r\n\r\n> Author:lixiaoming\r\n\r\n**请求类型：** POST\r\n**接口地址：** {url}/api/member/api/list_auth\r\n\r\n**params参数：**\r\n\r\n\r\n```\r\n{\r\n    \"code\":200,\r\n    \"msg\":\"ok\",\r\n    \"data\":{\r\n        \"total\":3,\r\n        \"list\":[\r\n            {\r\n                \"id\":3,\r\n                \"name\":\"首页\",\r\n                \"pid\":0,\r\n                \"web_url\":\"/\",\r\n                \"api_url\":\"/\",\r\n                \"icon_class\":\"\",\r\n                \"is_menu\":1,\r\n                \"level\":1,\r\n                \"auth_path\":\"3\",\r\n                \"sort\":0,\r\n                \"status\":1,\r\n                \"del\":1\r\n            },\r\n            {\r\n                \"id\":5,\r\n                \"name\":\"资源分类\",\r\n                \"pid\":7,\r\n                \"web_url\":\"/home/category/Api/studysession_list\",\r\n                \"api_url\":\"/api/category/Api/studysession_list\",\r\n                \"icon_class\":\"\",\r\n                \"is_menu\":1,\r\n                \"level\":2,\r\n                \"auth_path\":\"7,5\",\r\n                \"sort\":0,\r\n                \"status\":1,\r\n                \"del\":1\r\n            }\r\n        ]\r\n    },\r\n    \"time\":\"2020-12-07 19:30:35\"\r\n}\r\n```\r\n\r\n失败返回：\r\n\r\n```\r\n{  \r\n\"code\":errCode,  \r\n\"msg\":\"err\",  \r\n}\r\n```\r\n\r\n|  状态码   |   提示信息  |\r\n| --- | --- |\r\n|   200  |  成功   |\r\n|   500  |  系统繁忙，请稍后再试~|\r\n|   10001|  数据校验失败   |', 1, '', '', 1677556536);
INSERT INTO `pes_article_content` VALUES (9, 10, '<h2>权限列表</h2>\r\n<blockquote>\r\n<p>Author:lixiaoming</p>\r\n</blockquote>\r\n<p><strong>请求类型：</strong> POST<br />\r\n<strong>接口地址：</strong> {url}/api/member/api/list_auth</p>\r\n<p><strong>params参数：</strong></p>\r\n<pre><code>{\r\n    &quot;code&quot;:200,\r\n    &quot;msg&quot;:&quot;ok&quot;,\r\n    &quot;data&quot;:{\r\n        &quot;total&quot;:3,\r\n        &quot;list&quot;:[\r\n            {\r\n                &quot;id&quot;:3,\r\n                &quot;name&quot;:&quot;首页&quot;,\r\n                &quot;pid&quot;:0,\r\n                &quot;web_url&quot;:&quot;/&quot;,\r\n                &quot;api_url&quot;:&quot;/&quot;,\r\n                &quot;icon_class&quot;:&quot;&quot;,\r\n                &quot;is_menu&quot;:1,\r\n                &quot;level&quot;:1,\r\n                &quot;auth_path&quot;:&quot;3&quot;,\r\n                &quot;sort&quot;:0,\r\n                &quot;status&quot;:1,\r\n                &quot;del&quot;:1\r\n            },\r\n            {\r\n                &quot;id&quot;:5,\r\n                &quot;name&quot;:&quot;资源分类&quot;,\r\n                &quot;pid&quot;:7,\r\n                &quot;web_url&quot;:&quot;/home/category/Api/studysession_list&quot;,\r\n                &quot;api_url&quot;:&quot;/api/category/Api/studysession_list&quot;,\r\n                &quot;icon_class&quot;:&quot;&quot;,\r\n                &quot;is_menu&quot;:1,\r\n                &quot;level&quot;:2,\r\n                &quot;auth_path&quot;:&quot;7,5&quot;,\r\n                &quot;sort&quot;:0,\r\n                &quot;status&quot;:1,\r\n                &quot;del&quot;:1\r\n            }\r\n        ]\r\n    },\r\n    &quot;time&quot;:&quot;2020-12-07 19:30:35&quot;\r\n}\r\n</code></pre>\r\n<p>失败返回：</p>\r\n<pre><code>{  \r\n&quot;code&quot;:errCode,  \r\n&quot;msg&quot;:&quot;err&quot;,  \r\n}\r\n</code></pre>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>状态码</th>\r\n<th>提示信息</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>200</td>\r\n<td>成功</td>\r\n</tr>\r\n<tr>\r\n<td>500</td>\r\n<td>系统繁忙，请稍后再试~</td>\r\n</tr>\r\n<tr>\r\n<td>10001</td>\r\n<td>数据校验失败</td>\r\n</tr>\r\n</tbody>\r\n</table>', '## 权限列表\r\n\r\n> Author:lixiaoming\r\n\r\n**请求类型：** POST\r\n**接口地址：** {url}/api/member/api/list_auth\r\n\r\n**params参数：**\r\n\r\n\r\n```\r\n{\r\n    \"code\":200,\r\n    \"msg\":\"ok\",\r\n    \"data\":{\r\n        \"total\":3,\r\n        \"list\":[\r\n            {\r\n                \"id\":3,\r\n                \"name\":\"首页\",\r\n                \"pid\":0,\r\n                \"web_url\":\"/\",\r\n                \"api_url\":\"/\",\r\n                \"icon_class\":\"\",\r\n                \"is_menu\":1,\r\n                \"level\":1,\r\n                \"auth_path\":\"3\",\r\n                \"sort\":0,\r\n                \"status\":1,\r\n                \"del\":1\r\n            },\r\n            {\r\n                \"id\":5,\r\n                \"name\":\"资源分类\",\r\n                \"pid\":7,\r\n                \"web_url\":\"/home/category/Api/studysession_list\",\r\n                \"api_url\":\"/api/category/Api/studysession_list\",\r\n                \"icon_class\":\"\",\r\n                \"is_menu\":1,\r\n                \"level\":2,\r\n                \"auth_path\":\"7,5\",\r\n                \"sort\":0,\r\n                \"status\":1,\r\n                \"del\":1\r\n            }\r\n        ]\r\n    },\r\n    \"time\":\"2020-12-07 19:30:35\"\r\n}\r\n```\r\n\r\n失败返回：\r\n\r\n```\r\n{  \r\n\"code\":errCode,  \r\n\"msg\":\"err\",  \r\n}\r\n```\r\n\r\n|  状态码   |   提示信息  |\r\n| --- | --- |\r\n|   200  |  成功   |\r\n|   500  |  系统繁忙，请稍后再试~|\r\n|   10001|  数据校验失败   |', 1, '', '', 1677560962);
INSERT INTO `pes_article_content` VALUES (10, 11, '<p>211241</p>', '211241', 1, '', '', 1677567965);

-- ----------------------------
-- Table structure for pes_article_content_history
-- ----------------------------
DROP TABLE IF EXISTS `pes_article_content_history`;
CREATE TABLE `pes_article_content_history`  (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `article_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'article表的json存储结构',
  `article_content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细内容',
  `article_content_md` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'MD文档保留的格式',
  `article_content_editor` tinyint(1) NOT NULL COMMENT '使用的编辑器 0: HTML 1: MD	',
  `article_content_time` int(11) NOT NULL COMMENT '创建时间',
  `history_time` int(11) NOT NULL COMMENT '历史记录时间',
  `article_keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article_description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `history_version` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `history_version_listsort` int(11) NOT NULL COMMENT '历史版本排序值',
  PRIMARY KEY (`history_id`) USING BTREE,
  INDEX `article_id`(`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_article_content_history
-- ----------------------------
INSERT INTO `pes_article_content_history` VALUES (1, 3, '{\"article_id\":3,\"article_mark\":\"471154788591992832\",\"article_title\":\"333\",\"article_parent\":2,\"article_doc_id\":1,\"article_version\":\"1\",\"article_time\":1677554943,\"article_update_time\":0,\"article_listsort\":0,\"article_node\":1,\"article_status\":1,\"article_view\":0,\"article_like\":0,\"article_external_link\":\"\"}', '', '', 0, 1677554943, 1677555100, '', '', '', 0);
INSERT INTO `pes_article_content_history` VALUES (2, 4, '{\"article_id\":4,\"article_mark\":\"471160390588301312\",\"article_title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"article_parent\":0,\"article_doc_id\":2,\"article_version\":\"1.0\",\"article_time\":1677556278,\"article_update_time\":0,\"article_listsort\":0,\"article_node\":1,\"article_status\":1,\"article_view\":0,\"article_like\":0,\"article_external_link\":\"\"}', '', '', 0, 1677556278, 1677556303, '', '', '', 0);
INSERT INTO `pes_article_content_history` VALUES (3, 5, '{\"article_id\":5,\"article_mark\":\"471160671065604096\",\"article_title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"article_parent\":0,\"article_doc_id\":2,\"article_version\":\"1.0\",\"article_time\":1677556345,\"article_update_time\":0,\"article_listsort\":0,\"article_node\":1,\"article_status\":1,\"article_view\":0,\"article_like\":0,\"article_external_link\":\"\"}', '', '', 0, 1677556345, 1677556366, '', '', '', 0);
INSERT INTO `pes_article_content_history` VALUES (4, 6, '{\"article_id\":6,\"article_mark\":\"471161051417673728\",\"article_title\":\"333\",\"article_parent\":0,\"article_doc_id\":2,\"article_version\":\"1.0\",\"article_time\":1677556436,\"article_update_time\":0,\"article_listsort\":0,\"article_node\":1,\"article_status\":1,\"article_view\":0,\"article_like\":0,\"article_external_link\":\"\"}', '', '', 0, 1677556436, 1677556445, '', '', '', 0);
INSERT INTO `pes_article_content_history` VALUES (5, 8, '{\"article_id\":8,\"article_mark\":\"471161249216856064\",\"article_title\":\"1231321\",\"article_parent\":7,\"article_doc_id\":2,\"article_version\":\"1.0\",\"article_time\":1677556483,\"article_update_time\":0,\"article_listsort\":0,\"article_node\":1,\"article_status\":1,\"article_view\":0,\"article_like\":0,\"article_external_link\":\"\"}', '', '', 0, 1677556483, 1677556495, '', '', '', 0);
INSERT INTO `pes_article_content_history` VALUES (6, 7, '{\"article_id\":7,\"article_mark\":\"471161176680562688\",\"article_title\":\"1231231\",\"article_parent\":0,\"article_doc_id\":2,\"article_version\":\"1.0\",\"article_time\":1677556466,\"article_update_time\":0,\"article_listsort\":0,\"article_node\":1,\"article_status\":1,\"article_view\":0,\"article_like\":0,\"article_external_link\":\"\"}', '', '', 0, 1677556466, 1677556506, '', '', '', 0);
INSERT INTO `pes_article_content_history` VALUES (7, 8, '{\"article_id\":8,\"article_mark\":\"471161249216856064\",\"article_title\":\"\\u6dfb\\u52a0\\u6743\\u9650\",\"article_parent\":7,\"article_doc_id\":2,\"article_version\":\"1.0\",\"article_time\":1677556483,\"article_update_time\":1677556495,\"article_listsort\":0,\"article_node\":1,\"article_status\":1,\"article_view\":0,\"article_like\":0,\"article_external_link\":\"\"}', '', '', 0, 1677556495, 1677556536, '', '', '', 0);

-- ----------------------------
-- Table structure for pes_article_template
-- ----------------------------
DROP TABLE IF EXISTS `pes_article_template`;
CREATE TABLE `pes_article_template`  (
  `article_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_template_listsort` int(11) NOT NULL DEFAULT 0,
  `article_template_md_render` int(11) NOT NULL DEFAULT 0,
  `article_template_status` tinyint(4) NOT NULL DEFAULT 0,
  `article_template_createtime` int(11) NOT NULL DEFAULT 0,
  `article_template_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_template_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `article_template_uetemplate` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `article_template_mdtemplate` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`article_template_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_article_template
-- ----------------------------

-- ----------------------------
-- Table structure for pes_attachment
-- ----------------------------
DROP TABLE IF EXISTS `pes_attachment`;
CREATE TABLE `pes_attachment`  (
  `attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_status` tinyint(4) NOT NULL DEFAULT 0,
  `attachment_path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attachment_createtime` int(11) NOT NULL DEFAULT 0,
  `attachment_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `attachment_path_type` int(11) NOT NULL DEFAULT 0,
  `attachment_type` int(11) NOT NULL DEFAULT 0,
  `attachment_user_id` int(11) NOT NULL DEFAULT 0 COMMENT '后台上传用户ID',
  `attachment_member_id` int(11) NOT NULL DEFAULT -1 COMMENT '前台上传用户ID -1 为匿名',
  `attachment_owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`attachment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for pes_doc
-- ----------------------------
DROP TABLE IF EXISTS `pes_doc`;
CREATE TABLE `pes_doc`  (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文档标题',
  `doc_keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `doc_description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `doc_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文档封面',
  `doc_content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文档首页内容',
  `doc_content_md` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `doc_createtime` int(11) NOT NULL COMMENT '文档创建时间',
  `doc_version` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '当前使用的版本号',
  `doc_listsort` int(11) NOT NULL,
  `doc_content_editor` tinyint(4) NOT NULL COMMENT '使用的编辑器 0: HTML 1: MD	',
  `doc_open` int(11) NOT NULL DEFAULT 0,
  `doc_read_organize` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `doc_view` int(11) NOT NULL COMMENT '文档阅读次数',
  `doc_like` int(11) NOT NULL COMMENT '点赞次数',
  `doc_open_nav` int(11) NOT NULL COMMENT '是否展开标题导读',
  `doc_open_sidebar` int(11) NOT NULL,
  PRIMARY KEY (`doc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_doc
-- ----------------------------
INSERT INTO `pes_doc` VALUES (1, '格灵资源后台管理', '111', '222', '/upload/image/20230228/1677568238275965.jpg', '<p>21312<br />\r\n3123<br />\r\n321321</p>', '21312\r\n3123\r\n321321', 1677549120, '1', 0, 1, 1, '1,2,4', 37, 0, 0, 0);
INSERT INTO `pes_doc` VALUES (2, '智慧教育定制-客户端API', '', '', '/upload/image/20230228/1677568317974944.jpg', '', '', 1677554520, '1.0', 2, 0, 1, '1,2,4', 34, 0, 0, 0);

-- ----------------------------
-- Table structure for pes_doc_version
-- ----------------------------
DROP TABLE IF EXISTS `pes_doc_version`;
CREATE TABLE `pes_doc_version`  (
  `version_id` int(11) NOT NULL AUTO_INCREMENT,
  `version_number` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '版本号',
  `doc_id` int(11) NOT NULL COMMENT '文档ID',
  `doc_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '存储切换版本时文档的结构信息',
  `version_time` int(11) NOT NULL COMMENT '版本创建时间',
  PRIMARY KEY (`version_id`) USING BTREE,
  INDEX `doc_id`(`doc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_doc_version
-- ----------------------------
INSERT INTO `pes_doc_version` VALUES (1, '1', 1, '', 1677549197);
INSERT INTO `pes_doc_version` VALUES (2, '1.0', 2, '', 1677554595);

-- ----------------------------
-- Table structure for pes_field
-- ----------------------------
DROP TABLE IF EXISTS `pes_field`;
CREATE TABLE `pes_field`  (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_model_id` int(11) NOT NULL,
  `field_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `field_display_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `field_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `field_option` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field_explain` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `field_default` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `field_required` tinyint(4) NOT NULL DEFAULT 0,
  `field_listsort` int(11) NOT NULL DEFAULT 0,
  `field_list` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示于列表',
  `field_form` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示于表单 0:否 1:显示',
  `field_status` tinyint(4) NOT NULL DEFAULT 0,
  `field_is_null` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否为空',
  `field_only` int(11) NOT NULL DEFAULT 0,
  `field_action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'POST,PUT',
  PRIMARY KEY (`field_id`) USING BTREE,
  UNIQUE INDEX `modle_id`(`field_model_id`, `field_name`) USING BTREE,
  INDEX `field_name`(`field_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_field
-- ----------------------------
INSERT INTO `pes_field` VALUES (1, 1, 'name', '模型名称', 'text', '', '', '', 1, 1, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (2, 1, 'title', '显示名称', 'text', '', '', '', 1, 2, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (3, 1, 'search', '允许搜索', 'radio', '{\"\\u5173\\u95ed\":\"0\",\"\\u5f00\\u542f\":\"1\"}', '', '', 1, 3, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (4, 1, 'attr', '模型属性', 'radio', '{\"\\u524d\\u53f0\":\"1\",\"\\u540e\\u53f0\":\"2\"}', '', '', 1, 4, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (5, 1, 'status', '模型状态', 'radio', '{\"\\u542f\\u7528\":\"1\",\"\\u7981\\u7528\":\"0\"}', '', '', 1, 5, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (6, 1, 'page', '分页数', 'text', '', '', '10', 1, 5, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (7, 2, 'model_id', '模型ID', 'text', '', '', '', 1, 0, 0, 0, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (8, 2, 'type', '字段类型', 'select', '{&quot;\\u5206\\u7c7b&quot;:&quot;category&quot;,&quot;\\u5355\\u884c\\u8f93\\u5165\\u6846&quot;:&quot;text&quot;,&quot;\\u591a\\u884c\\u8f93\\u5165\\u6846&quot;:&quot;textarea&quot;,&quot;\\u5355\\u9009\\u6309\\u94ae&quot;:&quot;radio&quot;,&quot;\\u590d\\u9009\\u6846&quot;:&quot;checkbox&quot;,&quot;\\u5355\\u9009\\u4e0b\\u62c9\\u6846&quot;:&quot;select&quot;,&quot;\\u591a\\u9009\\u4e0b\\u62c9\\u6846&quot;:&quot;multiple&quot;,&quot;\\u5bcc\\u6587\\u672c\\u7f16\\u8f91\\u5668&quot;:&quot;editor&quot;,&quot;MD\\u7f16\\u8f91\\u5668&quot;:&quot;markdown&quot;,&quot;\\u7f29\\u7565\\u56fe&quot;:&quot;thumb&quot;,&quot;\\u4e0a\\u4f20\\u56fe\\u7ec4&quot;:&quot;img&quot;,&quot;\\u4e0a\\u4f20\\u6587\\u4ef6&quot;:&quot;file&quot;,&quot;\\u65e5\\u671f&quot;:&quot;date&quot;,&quot;\\u9009\\u9879\\u503c&quot;:&quot;option&quot;}', '', '', 1, 1, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (9, 2, 'name', '字段名称', 'text', '', '', '', 1, 2, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (10, 2, 'display_name', '显示名称', 'text', '', '', '', 1, 3, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (11, 2, 'option', '选项值', 'textarea', '', '选填， 选填， 此处若没有特殊说明，必须 名称|值 填写、且一行一个选项值，否则将导致数据异常!  注意:目前选项适用于单选，复选，下拉菜单。其余功能填写也不会产生任何实际效果。', '', 0, 4, 0, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (12, 2, 'explain', '字段说明', 'textarea', '', '', '', 0, 5, 0, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (13, 2, 'default', '默认值', 'text', '', '', '', 0, 6, 0, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (14, 2, 'required', '是否必填', 'radio', '{\"\\u662f\":\"1\",\"\\u5426\":\"0\"}', '', '', 1, 7, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (15, 2, 'list', '显示列表', 'radio', '{\"\\u663e\\u793a\":\"1\",\"\\u9690\\u85cf\":\"0\"}', '', '', 1, 8, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (16, 2, 'form', '显示表单', 'radio', '{\"\\u663e\\u793a\":\"1\",\"\\u9690\\u85cf\":\"0\"}', '', '', 1, 9, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (17, 2, 'status', '字段状态', 'radio', '{\"\\u542f\\u7528\":\"1\",\"\\u7981\\u7528\":\"0\"}', '', '', 1, 11, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (18, 2, 'listsort', '排序', 'text', '', '', '', 0, 99, 0, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (19, 2, 'is_null', '是否为空', 'radio', '{&quot;\\u5426&quot;:&quot;0&quot;,&quot;\\u662f&quot;:&quot;1&quot;}', '', '', 0, 7, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (20, 3, 'name', '菜单名称', 'text', '', '', '', 1, 2, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (21, 3, 'pid', '菜单层级', 'text', '', '', '', 1, 1, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (22, 3, 'icon', '菜单图标', 'text', '', '', '', 0, 5, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (23, 3, 'link', '菜单地址', 'text', '{&quot;\\u82e5\\u9009\\u62e9\\u7ad9\\u5185\\u94fe\\u63a5\\uff0c\\u8bf7\\u4ee5\\u7ec4-\\u63a7\\u5236\\u5668-\\u65b9\\u6cd5\\u5f62\\u5f0f\\u586b\\u5199\\u3002&quot;:&quot;&quot;}', '', '', 0, 4, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (24, 3, 'listsort', '排序', 'text', '', '', '', 0, 6, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (25, 3, 'type', '链接类型', 'radio', '{&quot;\\u7ad9\\u5185\\u94fe\\u63a5&quot;:&quot;0&quot;,&quot;\\u7ad9\\u5916\\u8fde\\u63a5&quot;:&quot;1&quot;,&quot;\\u6587\\u6863\\u76ee\\u5f55&quot;:&quot;2&quot;}', '', '', 1, 3, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (26, 4, 'controller', '路由控制器', 'text', '', '控制器填写以‘-’为分隔符，分别以：组-控制器名称-方法 形式填写。若是默认组的控制器，那么可以忽略填写组参数。', '', 1, 2, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (27, 4, 'param', '显式参数', 'text', '', '若URL存在GET参数，填写上该参数，以半角逗号隔开。如有三个参数a，b，c。那么填写为：a,b,c', '', 0, 3, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (28, 4, 'rule', '路由规则', 'text', '', '若链接中存在显式参数，那么用左右大括号包围着。如参数number，那么路由规则这样写：route/{number}。同时规则开头不要添加任何字符，且分隔符只能为\'/\'', '', 1, 4, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (29, 4, 'title', '路由名称', 'text', '', '建议填写，以免路由规则过多时，自己也不清楚谁是他的爹。', '', 0, 1, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (30, 4, 'hash', '路由哈希值', 'text', '', '', '', 1, 99, 0, 0, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (31, 4, 'listsort', '排序', 'text', '', '', '', 0, 100, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (32, 4, 'status', '启用状态', 'radio', '{&quot;\\u542f\\u7528&quot;:&quot;1&quot;,&quot;\\u7981\\u7528&quot;:&quot;0&quot;}', '', '', 1, 7, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (37, 13, 'name', '节点名称', 'text', '', '', '', 1, 6, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (38, 13, 'parent', '所属菜单', 'text', '', '本选项仅用于布置当前权限节点显示于何方。', '', 1, 1, 0, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (39, 13, 'verify', '是否验证', 'radio', '{&quot;\\u4e0d\\u9a8c\\u8bc1&quot;:&quot;0&quot;,&quot;\\u9a8c\\u8bc1&quot;:&quot;1&quot;}', '', '', 0, 8, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (40, 13, 'msg', '提示信息', 'text', '', '', '', 0, 9, 0, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (42, 13, 'value', '节点匹配值', 'text', '', '', '', 0, 7, 0, 1, 1, 0, 1, 'POST,PUT');
INSERT INTO `pes_field` VALUES (45, 13, 'listsort', '排序', 'text', '', '', '', 0, 99, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (51, 20, 'status', '状态', 'radio', '{\"\\u7981\\u7528\":\"0\",\"\\u542f\\u7528\":\"1\"}', '', '1', 1, 100, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (52, 20, 'createtime', '创建时间', 'date', '', '', '', 0, 99, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (53, 20, 'email', '邮箱地址', 'text', '', '', '', 1, 1, 1, 1, 0, 1, 1, 'POST,PUT');
INSERT INTO `pes_field` VALUES (54, 20, 'password', '登录密码', 'text', '', '', '', 0, 2, 0, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (55, 20, 'name', '用户名称', 'text', '', '', '', 1, 3, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (56, 20, 'phone', '手机号码', 'text', '', '', '', 1, 4, 1, 1, 0, 1, 1, 'POST,PUT');
INSERT INTO `pes_field` VALUES (58, 20, 'account', '登录账号', 'text', '', '', '', 1, 1, 1, 1, 1, 0, 1, 'POST,PUT');
INSERT INTO `pes_field` VALUES (59, 20, 'organize_id', '所属分组', 'select', '{\"\\u7cfb\\u7edf\\u7ba1\\u7406\\u7ec4\":1,\"\\u5185\\u90e8\\u7f16\\u8f91\\u7ec4\":2,\"\\u5916\\u90e8\\u8bbf\\u5ba2\":3,\"\\u5185\\u90e8\\u67e5\\u770b\\u7ec4\":4}', '', '', 1, 1, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (61, 24, 'status', '状态', 'radio', '{\"\\u7981\\u7528\":\"0\",\"\\u542f\\u7528\":\"1\"}', '', '1', 1, 100, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (62, 24, 'createtime', '创建时间', 'date', '', '', '', 0, 99, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (63, 24, 'name', '附件名称', 'text', '', '', '', 1, 2, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (64, 24, 'path', '附件地址', 'text', '', '', '', 1, 3, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (65, 24, 'path_type', '存储位置', 'radio', '{&quot;\\u672c\\u5730\\u786c\\u76d8&quot;:&quot;0&quot;}', '', '', 1, 4, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (66, 24, 'type', '附件类型', 'radio', '{&quot;\\u56fe\\u7247&quot;:&quot;0&quot;,&quot;\\u6587\\u4ef6&quot;:&quot;1&quot;,&quot;\\u591a\\u5a92\\u4f53&quot;:&quot;3&quot;}', '', '', 1, 1, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (67, 24, 'owner', '上传方', 'radio', '{&quot;\\u524d\\u53f0\\u7528\\u6237&quot;:&quot;0&quot;,&quot;\\u540e\\u53f0\\u7ba1\\u7406&quot;:&quot;1&quot;}', '', '', 1, 94, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (68, 26, 'name', '分组名称', 'text', '', '', '', 1, 1, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (69, 5, 'title', '文档标题', 'text', '', '', '', 1, 1, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (70, 5, 'cover', '文档封面', 'thumb', '', '', '', 0, 2, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (72, 5, 'listsort', '排序', 'text', '', '', '', 0, 98, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (73, 5, 'createtime', '创建时间', 'date', '', '', '', 0, 99, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (74, 2, 'only', '唯一', 'radio', '{&quot;\\u5426&quot;:&quot;0&quot;,&quot;\\u662f&quot;:&quot;1&quot;}', '启用此功能，提交数据时系统会判断该字段是否存在相同的数值。', '', 1, 10, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (75, 2, 'action', '行为', 'checkbox', '{&quot;\\u65b0\\u589e&quot;:&quot;POST&quot;,&quot;\\u66f4\\u65b0&quot;:&quot;PUT&quot;}', '修改此处可以让字段在插入或者更新中显示。', 'POST,PUT', 0, 11, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (76, 5, 'version', '文档版号', 'text', '', '', '', 1, 3, 1, 1, 1, 0, 0, 'POST');
INSERT INTO `pes_field` VALUES (77, 13, 'is_menu', '是否菜单', 'radio', '{&quot;\\u5426&quot;:&quot;0&quot;,&quot;\\u662f&quot;:&quot;1&quot;}', '', '0', 1, 2, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (78, 13, 'link_type', '链接类型', 'radio', '{&quot;\\u7ad9\\u5185\\u94fe\\u63a5&quot;:&quot;0&quot;,&quot;\\u7ad9\\u5916\\u94fe\\u63a5&quot;:&quot;1&quot;}', '', '0', 1, 3, 0, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (79, 13, 'link', '菜单地址', 'text', '', '', '', 0, 4, 0, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (80, 13, 'menu_icon', '菜单图标', 'text', '', '', 'am-icon-file', 1, 5, 0, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (81, 5, 'open', '开放阅读', 'radio', '{&quot;\\u5f00\\u653e\\u9605\\u8bfb&quot;:&quot;0&quot;,&quot;\\u767b\\u5f55\\u9605\\u8bfb&quot;:&quot;1&quot;}', '', '', 1, 4, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (82, 5, 'read_organize', '可阅读用户分组', 'checkbox', '{\"\\u7cfb\\u7edf\\u7ba1\\u7406\\u7ec4\":1,\"\\u5185\\u90e8\\u7f16\\u8f91\\u7ec4\":2,\"\\u5916\\u90e8\\u8bbf\\u5ba2\":3,\"\\u5185\\u90e8\\u67e5\\u770b\\u7ec4\":4}', '', '', 0, 5, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (83, 20, 'editor', '首选编辑器', 'radio', '{&quot;\\u5bcc\\u6587\\u672c\\u7f16\\u8f91\\u5668&quot;:&quot;0&quot;,&quot;MD\\u7f16\\u8f91\\u5668&quot;:&quot;1&quot;}', '', '', 1, 10, 0, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (84, 5, 'open_nav', '是否展开标题导读', 'radio', '{&quot;\\u6536\\u8d77&quot;:&quot;0&quot;,&quot;\\u5c55\\u5f00&quot;:&quot;1&quot;}', '若当前使用的模板支持标题导读生成，则本功能属于控制是否默认展开。', '', 1, 10, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (85, 27, 'status', '状态', 'radio', '{&quot;\\u7981\\u7528&quot;:&quot;0&quot;,&quot;\\u542f\\u7528&quot;:&quot;1&quot;}', '', '1', 1, 100, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (86, 27, 'listsort', '排序', 'text', '', '', '', 0, 98, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (87, 27, 'createtime', '创建时间', 'date', '', '', '', 0, 99, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (88, 27, 'name', '模板名称', 'text', '', '', '', 1, 1, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (89, 27, 'code', '模板代码', 'text', '', '模板代码需要是唯一值，您在文档调用时，请用大括号括着您的模板代码。如模板代码：node ，那么在文档内容中调用则是：{node}', '', 1, 2, 1, 1, 1, 0, 1, 'POST,PUT');
INSERT INTO `pes_field` VALUES (90, 27, 'uetemplate', '富文本编辑器内容', 'editor', '', '', '', 0, 4, 0, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (91, 27, 'mdtemplate', 'MD编辑器内容', 'markdown', '', '', '', 0, 5, 0, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (92, 27, 'md_render', 'MD格式渲染', 'radio', '{&quot;\\u9ed8\\u8ba4-\\u5bcc\\u6587\\u672c\\u548cMD\\u5404\\u81ea\\u586b\\u5199&quot;:&quot;0&quot;,&quot;\\u5bcc\\u6587\\u672c\\u5185\\u5bb9\\u4ee5MD\\u7f16\\u8f91\\u5668\\u586b\\u5145&quot;:&quot;1&quot;}', '若您编写的文档以富文本编辑器编写，请选择默认的选项即可。若您编写的文档以MD编辑器发布，请选择‘富文本内容以MD编辑器填充’选项。由于篇幅限制具体原因请查看官方文档说明。', '', 1, 6, 1, 1, 1, 0, 0, 'POST,PUT');
INSERT INTO `pes_field` VALUES (93, 5, 'open_sidebar', '展开侧栏', 'radio', '{&quot;\\u6536\\u8d77&quot;:&quot;0&quot;,&quot;\\u5c55\\u5f00&quot;:&quot;1&quot;}', '', '', 1, 11, 1, 1, 1, 0, 0, 'POST,PUT');

-- ----------------------------
-- Table structure for pes_findpassword
-- ----------------------------
DROP TABLE IF EXISTS `pes_findpassword`;
CREATE TABLE `pes_findpassword`  (
  `findpassword_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `findpassword_mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标记',
  `findpassword_createtime` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`findpassword_id`) USING BTREE,
  UNIQUE INDEX `findpassword_mark`(`findpassword_mark`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '查找密码' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_findpassword
-- ----------------------------

-- ----------------------------
-- Table structure for pes_member
-- ----------------------------
DROP TABLE IF EXISTS `pes_member`;
CREATE TABLE `pes_member`  (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `member_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `member_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `member_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `member_status` tinyint(4) NOT NULL DEFAULT 0,
  `member_createtime` int(11) NOT NULL DEFAULT 0,
  `member_organize_id` int(11) NOT NULL,
  `member_secret_key` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '安全密钥',
  `member_editor` int(11) NOT NULL COMMENT '首选编辑器',
  PRIMARY KEY (`member_id`) USING BTREE,
  UNIQUE INDEX `member_account`(`member_account`) USING BTREE,
  UNIQUE INDEX `member_email`(`member_email`) USING BTREE,
  UNIQUE INDEX `member_phone`(`member_phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_member
-- ----------------------------
INSERT INTO `pes_member` VALUES (1, 'gl_admin', NULL, '$6$72aa0b6953$IBGk73NnVTLcUZ7n9IR05gM/rkMiSHuCu9gRxe16gRGYgE8z47ikXIludp7vM75U20zs8/i2jipFKJp9rW2FP.', '超级管理员', NULL, 1, 1677549012, 1, '$6$72aa0b6953$40Oet5vcHhdv7Wv55TgLOWnp.Dj8jhZdx1SrJI0DDf1nsPDwpshmxmgDYKk7IpocQRAqnaqsiSsQJrAb1nfC..', 1);
INSERT INTO `pes_member` VALUES (2, 'tanxinghua', NULL, '$6$72aa0b6953$PUSgRcLZt2Uljs39nqXe4mNAZAUbKjuKXkwNRqzYgQfBpu6vIvU3MKm5rnnLMHQDp7T4oYLt.FAkzGi7Huf1W1', '谭兴华', NULL, 1, 1677549480, 2, '', 1);
INSERT INTO `pes_member` VALUES (4, 'zhouzeken', NULL, '$6$72aa0b6953$PUSgRcLZt2Uljs39nqXe4mNAZAUbKjuKXkwNRqzYgQfBpu6vIvU3MKm5rnnLMHQDp7T4oYLt.FAkzGi7Huf1W1', '周泽恳', NULL, 1, 1677566539, 3, '$6$72aa0b6953$P.hqSHHNEpNEkUR8l2yv9T/RjJD/.BTqdzIcQCatrVxXk8ggzSMaCyrDgT1QiD718frxozvHuBi1TV7N5QV4I/', 1);

-- ----------------------------
-- Table structure for pes_member_organize
-- ----------------------------
DROP TABLE IF EXISTS `pes_member_organize`;
CREATE TABLE `pes_member_organize`  (
  `member_organize_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_organize_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`member_organize_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_member_organize
-- ----------------------------
INSERT INTO `pes_member_organize` VALUES (1, '系统管理组');
INSERT INTO `pes_member_organize` VALUES (2, '内部编辑组');
INSERT INTO `pes_member_organize` VALUES (3, '外部访客');
INSERT INTO `pes_member_organize` VALUES (4, '内部查看组');

-- ----------------------------
-- Table structure for pes_menu
-- ----------------------------
DROP TABLE IF EXISTS `pes_menu`;
CREATE TABLE `pes_menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_pid` int(11) NOT NULL DEFAULT 0,
  `menu_icon` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `menu_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `menu_listsort` tinyint(100) NOT NULL DEFAULT 0,
  `menu_type` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`menu_id`) USING BTREE,
  INDEX `menu_pid`(`menu_pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_menu
-- ----------------------------
INSERT INTO `pes_menu` VALUES (1, '首页', 0, 'am-icon-home', '/', 1, 1);
INSERT INTO `pes_menu` VALUES (2, '文档列表', 0, '', '', 2, 2);

-- ----------------------------
-- Table structure for pes_model
-- ----------------------------
DROP TABLE IF EXISTS `pes_model`;
CREATE TABLE `pes_model`  (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model_title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `model_status` tinyint(4) NOT NULL DEFAULT 0,
  `model_search` tinyint(11) NOT NULL DEFAULT 0 COMMENT '允许搜索',
  `model_attr` tinyint(1) NOT NULL DEFAULT 0 COMMENT '模型属性 1:前台(含前台) 2:后台',
  `model_page` int(11) NOT NULL DEFAULT 10,
  PRIMARY KEY (`model_id`) USING BTREE,
  UNIQUE INDEX `model_name`(`model_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_model
-- ----------------------------
INSERT INTO `pes_model` VALUES (1, 'model', '模型管理', 1, 1, 2, 10);
INSERT INTO `pes_model` VALUES (2, 'field', '字段管理', 1, 1, 2, 10);
INSERT INTO `pes_model` VALUES (3, 'menu', '前台菜单管理', 1, 1, 2, 10);
INSERT INTO `pes_model` VALUES (4, 'route', '路由规则', 1, 1, 2, 10);
INSERT INTO `pes_model` VALUES (5, 'Doc', '文档管理', 0, 0, 1, 10);
INSERT INTO `pes_model` VALUES (13, 'Node', '权限节点管理', 1, 1, 2, 10);
INSERT INTO `pes_model` VALUES (20, 'Member', '用户管理', 1, 1, 1, 10);
INSERT INTO `pes_model` VALUES (24, 'attachment', '附件管理', 1, 0, 2, 30);
INSERT INTO `pes_model` VALUES (26, 'member_organize', '用户分组', 1, 0, 2, 10);
INSERT INTO `pes_model` VALUES (27, 'Article_template', '文档通用模板', 1, 0, 2, 10);

-- ----------------------------
-- Table structure for pes_node
-- ----------------------------
DROP TABLE IF EXISTS `pes_node`;
CREATE TABLE `pes_node`  (
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `node_parent` int(11) NOT NULL DEFAULT 0,
  `node_verify` int(11) NOT NULL DEFAULT 0,
  `node_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `node_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `node_listsort` int(11) NOT NULL DEFAULT 0,
  `node_is_menu` int(11) NOT NULL DEFAULT 0,
  `node_link_type` int(11) NOT NULL DEFAULT 0,
  `node_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `node_menu_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`node_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_node
-- ----------------------------
INSERT INTO `pes_node` VALUES (2, '文档管理', 0, 1, '', 'Create-GET-Doc-index', 2, 1, 0, 'Create-Doc-index', 'am-icon-book');
INSERT INTO `pes_node` VALUES (3, '用户管理', 0, 1, '', '', 3, 1, 0, '', 'am-icon-user-md');
INSERT INTO `pes_node` VALUES (4, '系统设置', 0, 1, '', '', 99, 1, 0, '', 'am-icon-cog');
INSERT INTO `pes_node` VALUES (5, '基础设置', 4, 1, '', 'Create-GET-Setting-index', 1, 1, 0, 'Create-Setting-index', 'am-icon-keyboard-o');
INSERT INTO `pes_node` VALUES (7, '文档新建/编辑', 2, 1, '', 'Create-GET-Doc-action', 1, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (8, '创建新文档', 2, 1, '', 'Create-POST-Doc-action', 2, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (9, '更新文档', 2, 1, NULL, 'Create-PUT-Doc-action', 3, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (10, '删除文档', 2, 1, NULL, 'Create-DELETE-Doc-action', 4, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (11, '查看文档首页内容或目录', 28, 1, '', 'Create-GET-Article-index', 1, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (12, '编写/查看文档目录内容', 28, 1, '', 'Create-GET-Article-write', 4, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (13, '查看文档目录历史记录', 28, 1, '', 'Create-GET-Article-history', 9, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (14, '文档目录历史对比器', 28, 1, '', 'Create-GET-Article-compare', 10, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (15, '新建文档目录', 28, 1, '', 'Create-POST-Article-index', 3, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (16, '更新文档目录', 28, 1, '', 'Create-PUT-Article-index', 5, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (17, '删除文档目录', 28, 1, '', 'Create-DELETE-Article-delete', 6, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (18, '删除文档目录历史记录', 28, 1, '', 'Create-DELETE-Article-history', 17, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (19, '更新文档首页', 29, 1, NULL, 'Create-PUT-Article-doc', 1, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (20, '文档目录切换指定历史版本', 28, 1, '', 'Create-PUT-Article-history', 15, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (21, '新建文档版号', 29, 1, '', 'Create-POST-Doc-version', 2, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (22, '切换文档版号', 29, 1, '', 'Create-PUT-Doc-version', 3, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (23, '删除文档版号', 29, 1, '', 'Create-DELETE-Doc-version', 4, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (24, '权限节点管理', 4, 1, '', 'Create-GET-Node-index', 2, 1, 0, 'Create-Node-index', 'am-icon-sitemap');
INSERT INTO `pes_node` VALUES (25, '前台菜单管理', 4, 1, '', 'Create-GET-Menu-index', 3, 1, 0, 'Create-Menu-index', 'am-icon-bars');
INSERT INTO `pes_node` VALUES (26, '用户列表', 3, 1, '', 'Create-Member-index', 1, 1, 0, 'Create-Member-index', 'am-icon-user-plus');
INSERT INTO `pes_node` VALUES (27, '用户分组列表', 3, 1, '', 'Create-GET-Member_organize-index', 2, 1, 0, 'Create-Member_organize-index', 'am-icon-users');
INSERT INTO `pes_node` VALUES (28, '文档编写界面', 2, 0, '', '', 6, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (29, '文档首页相关', 28, 0, '', '', 2, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (30, '新增/编辑用户', 26, 1, '', 'Create-GET-Member-action', 1, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (31, '创建新用户', 26, 1, '', 'Create-POST-Member-action', 2, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (32, '更新用户', 26, 1, '', 'Create-PUT-Member-action', 3, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (33, '删除用户', 26, 1, '', 'Create-DELETE-Member-action', 4, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (34, '新建/编辑用户分组', 27, 1, '', 'Create-GET-Member_organize-action', 1, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (35, '创建新用户分组', 27, 1, '', 'Create-POST-Member_organize-action', 2, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (36, '更新用户分组', 27, 1, '', 'Create-PUT-Member_organize-action', 3, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (37, '删除用户分组', 27, 1, '', 'Create-DELETE-Member_organize-action', 4, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (38, '隐藏设置', 0, 0, '', '', 9999, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (39, '模型管理', 38, 1, '', 'Create-GET-Model-index', 1, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (40, '新增/编辑权限节点', 24, 1, '', 'Create-GET-Node-action', 1, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (41, '创建新权限节点', 24, 1, '', 'Create-POST-Node-action', 2, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (42, '更新权限节点', 24, 1, '', 'Create-PUT-Node-action', 3, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (43, '删除权限节点', 24, 1, '', 'Create-DELETE-Node-action', 4, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (44, '新增/编辑前台菜单', 25, 1, '', 'Create-GET-Menu-action', 1, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (45, '创建新前台菜单', 25, 1, '', 'Create-POST-Menu-action', 2, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (46, '更新前台菜单', 25, 1, '', 'Create-PUT-Menu-action', 3, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (47, '删除前台菜单', 25, 1, '', 'Create-DELETE-Menu-action', 4, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (48, '新增/编辑模型', 39, 1, '', 'Create-GET-Model-action', 1, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (49, '创建新模型', 39, 1, '', 'Create-POST-Model-action', 2, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (50, '更新模型', 39, 1, '', 'Create-PUT-Model-action', 3, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (51, '删除模型', 39, 1, '', 'Create-DELETE-Model-action', 4, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (52, '字段管理', 39, 1, '', 'Create-GET-Field-index', 8, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (53, '新增/编辑字段', 39, 1, '', 'Create-GET-Field-action', 9, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (54, '创建新字段', 39, 1, '', 'Create-POST-Field-action', 10, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (55, '更新字段', 39, 1, '', 'Create-PUT-Field-action', 11, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (56, '删除字段', 39, 1, '', 'Create-DELETE-Field-action', 12, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (57, '导出模型', 39, 1, '', 'Create-GET-Model-export', 5, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (58, '导入模型', 39, 1, '', 'Create-GET-Model-import', 6, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (59, '提交导入模型', 39, 1, '', 'Create-POST-Model-import', 7, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (60, '排序字段', 39, 1, '', 'Create-PUT-Field-listsort', 13, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (61, '排序前台菜单', 25, 1, '', 'Create-PUT-Menu-listsort', 5, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (62, '排序权限节点', 24, 1, '', 'Create-PUT-Node-listsort', 5, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (63, '排序文档', 2, 1, NULL, 'Create-PUT-Doc-listsort', 5, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (64, '路由规则', 4, 1, '', 'Create-GET-Route-index', 4, 1, 0, 'Create-Route-index', 'am-icon-magic');
INSERT INTO `pes_node` VALUES (65, '新增/编辑路由规则', 64, 1, '', 'Create-GET-Route-action', 1, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (66, '创建新路由规则', 64, 1, '', 'Create-POST-Route-action', 2, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (67, '更新路由规则', 64, 1, '', 'Create-PUT-Route-action', 3, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (68, '删除路由规则', 64, 1, '', 'Create-DELETE-Route-action', 4, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (69, '排序路由规则', 64, 1, '', 'Create-PUT-Route-listsort', 5, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (74, '执行自动更新', 73, 1, NULL, 'Create-PUT-Setting-atUpgrade', 1, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (75, '执行手动更新', 73, 1, NULL, 'Create-PUT-Setting-mtUpgrade', 1, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (76, '保存网站设置', 5, 1, NULL, 'Create-PUT-Setting-index', 1, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (79, '安装应用', 77, 1, NULL, 'Create-GET-Application-install', 1, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (80, '升级应用', 78, 1, NULL, 'Create-GET-Application-upgrade', 1, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (81, '查看用户分组权限', 27, 1, '', 'Create-GET-Member_organize-setAuth', 1, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (82, '设置用户分组权限', 27, 1, '', 'Create-PUT-Member_organize-setAuth', 1, 0, 0, '', 'am-icon-file');
INSERT INTO `pes_node` VALUES (84, '新增/编辑文档通用模板', 83, 1, NULL, 'Create-GET-Article_template-action', 1, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (85, '创建文档通用模板', 83, 1, NULL, 'Create-POST-Article_template-action', 2, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (86, '更新文档通用模板', 83, 1, NULL, 'Create-PUT-Article_template-action', 3, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (87, '删除文档通用模板', 83, 1, NULL, 'Create-DELETE-Article_template-action', 4, 0, 0, '', '');
INSERT INTO `pes_node` VALUES (88, '排序文档通用模板', 83, 1, NULL, 'Create-DELETE-Article_template-listsort', 5, 0, 0, '', '');

-- ----------------------------
-- Table structure for pes_node_group
-- ----------------------------
DROP TABLE IF EXISTS `pes_node_group`;
CREATE TABLE `pes_node_group`  (
  `node_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_organize_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户组ID',
  `node_id` int(11) NOT NULL DEFAULT 0 COMMENT '节点ID',
  PRIMARY KEY (`node_group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 484 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组权限节点' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_node_group
-- ----------------------------
INSERT INTO `pes_node_group` VALUES (330, 1, 2);
INSERT INTO `pes_node_group` VALUES (331, 1, 7);
INSERT INTO `pes_node_group` VALUES (332, 1, 8);
INSERT INTO `pes_node_group` VALUES (333, 1, 9);
INSERT INTO `pes_node_group` VALUES (334, 1, 10);
INSERT INTO `pes_node_group` VALUES (335, 1, 63);
INSERT INTO `pes_node_group` VALUES (336, 1, 28);
INSERT INTO `pes_node_group` VALUES (337, 1, 11);
INSERT INTO `pes_node_group` VALUES (338, 1, 29);
INSERT INTO `pes_node_group` VALUES (339, 1, 19);
INSERT INTO `pes_node_group` VALUES (340, 1, 21);
INSERT INTO `pes_node_group` VALUES (341, 1, 22);
INSERT INTO `pes_node_group` VALUES (342, 1, 23);
INSERT INTO `pes_node_group` VALUES (343, 1, 15);
INSERT INTO `pes_node_group` VALUES (344, 1, 12);
INSERT INTO `pes_node_group` VALUES (345, 1, 16);
INSERT INTO `pes_node_group` VALUES (346, 1, 17);
INSERT INTO `pes_node_group` VALUES (347, 1, 13);
INSERT INTO `pes_node_group` VALUES (348, 1, 14);
INSERT INTO `pes_node_group` VALUES (349, 1, 20);
INSERT INTO `pes_node_group` VALUES (350, 1, 18);
INSERT INTO `pes_node_group` VALUES (351, 1, 3);
INSERT INTO `pes_node_group` VALUES (352, 1, 26);
INSERT INTO `pes_node_group` VALUES (353, 1, 30);
INSERT INTO `pes_node_group` VALUES (354, 1, 31);
INSERT INTO `pes_node_group` VALUES (355, 1, 32);
INSERT INTO `pes_node_group` VALUES (356, 1, 33);
INSERT INTO `pes_node_group` VALUES (357, 1, 27);
INSERT INTO `pes_node_group` VALUES (358, 1, 82);
INSERT INTO `pes_node_group` VALUES (359, 1, 81);
INSERT INTO `pes_node_group` VALUES (360, 1, 34);
INSERT INTO `pes_node_group` VALUES (361, 1, 35);
INSERT INTO `pes_node_group` VALUES (362, 1, 36);
INSERT INTO `pes_node_group` VALUES (363, 1, 37);
INSERT INTO `pes_node_group` VALUES (364, 1, 4);
INSERT INTO `pes_node_group` VALUES (365, 1, 5);
INSERT INTO `pes_node_group` VALUES (366, 1, 76);
INSERT INTO `pes_node_group` VALUES (367, 1, 24);
INSERT INTO `pes_node_group` VALUES (368, 1, 40);
INSERT INTO `pes_node_group` VALUES (369, 1, 41);
INSERT INTO `pes_node_group` VALUES (370, 1, 42);
INSERT INTO `pes_node_group` VALUES (371, 1, 43);
INSERT INTO `pes_node_group` VALUES (372, 1, 62);
INSERT INTO `pes_node_group` VALUES (373, 1, 25);
INSERT INTO `pes_node_group` VALUES (374, 1, 44);
INSERT INTO `pes_node_group` VALUES (375, 1, 45);
INSERT INTO `pes_node_group` VALUES (376, 1, 46);
INSERT INTO `pes_node_group` VALUES (377, 1, 47);
INSERT INTO `pes_node_group` VALUES (378, 1, 61);
INSERT INTO `pes_node_group` VALUES (379, 1, 64);
INSERT INTO `pes_node_group` VALUES (380, 1, 65);
INSERT INTO `pes_node_group` VALUES (381, 1, 66);
INSERT INTO `pes_node_group` VALUES (382, 1, 67);
INSERT INTO `pes_node_group` VALUES (383, 1, 68);
INSERT INTO `pes_node_group` VALUES (384, 1, 69);
INSERT INTO `pes_node_group` VALUES (385, 1, 73);
INSERT INTO `pes_node_group` VALUES (386, 1, 75);
INSERT INTO `pes_node_group` VALUES (387, 1, 74);
INSERT INTO `pes_node_group` VALUES (388, 1, 77);
INSERT INTO `pes_node_group` VALUES (389, 1, 79);
INSERT INTO `pes_node_group` VALUES (390, 1, 78);
INSERT INTO `pes_node_group` VALUES (391, 1, 80);
INSERT INTO `pes_node_group` VALUES (392, 1, 89);
INSERT INTO `pes_node_group` VALUES (393, 1, 90);
INSERT INTO `pes_node_group` VALUES (394, 1, 91);
INSERT INTO `pes_node_group` VALUES (395, 1, 92);
INSERT INTO `pes_node_group` VALUES (396, 1, 93);
INSERT INTO `pes_node_group` VALUES (397, 1, 83);
INSERT INTO `pes_node_group` VALUES (398, 1, 84);
INSERT INTO `pes_node_group` VALUES (399, 1, 85);
INSERT INTO `pes_node_group` VALUES (400, 1, 86);
INSERT INTO `pes_node_group` VALUES (401, 1, 87);
INSERT INTO `pes_node_group` VALUES (402, 1, 88);
INSERT INTO `pes_node_group` VALUES (403, 1, 70);
INSERT INTO `pes_node_group` VALUES (404, 1, 72);
INSERT INTO `pes_node_group` VALUES (405, 1, 38);
INSERT INTO `pes_node_group` VALUES (406, 1, 39);
INSERT INTO `pes_node_group` VALUES (407, 1, 48);
INSERT INTO `pes_node_group` VALUES (408, 1, 49);
INSERT INTO `pes_node_group` VALUES (409, 1, 50);
INSERT INTO `pes_node_group` VALUES (410, 1, 51);
INSERT INTO `pes_node_group` VALUES (411, 1, 57);
INSERT INTO `pes_node_group` VALUES (412, 1, 58);
INSERT INTO `pes_node_group` VALUES (413, 1, 59);
INSERT INTO `pes_node_group` VALUES (414, 1, 52);
INSERT INTO `pes_node_group` VALUES (415, 1, 53);
INSERT INTO `pes_node_group` VALUES (416, 1, 54);
INSERT INTO `pes_node_group` VALUES (417, 1, 55);
INSERT INTO `pes_node_group` VALUES (418, 1, 56);
INSERT INTO `pes_node_group` VALUES (419, 1, 60);
INSERT INTO `pes_node_group` VALUES (420, 2, 2);
INSERT INTO `pes_node_group` VALUES (421, 2, 7);
INSERT INTO `pes_node_group` VALUES (422, 2, 8);
INSERT INTO `pes_node_group` VALUES (423, 2, 9);
INSERT INTO `pes_node_group` VALUES (424, 2, 63);
INSERT INTO `pes_node_group` VALUES (425, 2, 28);
INSERT INTO `pes_node_group` VALUES (426, 2, 11);
INSERT INTO `pes_node_group` VALUES (427, 2, 29);
INSERT INTO `pes_node_group` VALUES (428, 2, 19);
INSERT INTO `pes_node_group` VALUES (429, 2, 21);
INSERT INTO `pes_node_group` VALUES (430, 2, 22);
INSERT INTO `pes_node_group` VALUES (431, 2, 23);
INSERT INTO `pes_node_group` VALUES (432, 2, 15);
INSERT INTO `pes_node_group` VALUES (433, 2, 12);
INSERT INTO `pes_node_group` VALUES (434, 2, 16);
INSERT INTO `pes_node_group` VALUES (435, 2, 17);
INSERT INTO `pes_node_group` VALUES (436, 2, 13);
INSERT INTO `pes_node_group` VALUES (437, 2, 14);
INSERT INTO `pes_node_group` VALUES (438, 2, 20);
INSERT INTO `pes_node_group` VALUES (439, 2, 18);
INSERT INTO `pes_node_group` VALUES (480, 4, 2);
INSERT INTO `pes_node_group` VALUES (481, 4, 28);
INSERT INTO `pes_node_group` VALUES (482, 4, 11);
INSERT INTO `pes_node_group` VALUES (483, 4, 29);

-- ----------------------------
-- Table structure for pes_option
-- ----------------------------
DROP TABLE IF EXISTS `pes_option`;
CREATE TABLE `pes_option`  (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_node` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属节点',
  `option_range` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `option_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选项格式',
  `option_form` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表单类型',
  `option_form_option` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表单选项',
  `option_required` int(11) NOT NULL COMMENT '是否必填',
  `option_explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选项说明',
  `option_listsort` int(11) NOT NULL COMMENT '排序值',
  PRIMARY KEY (`option_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_option
-- ----------------------------
INSERT INTO `pes_option` VALUES (-3, 'help_document', '已读帮助信息', '1', '隐藏信息', 'system', 'string', 'text', '', 0, '', 99);
INSERT INTO `pes_option` VALUES (-2, 'version', '程序版本', '2.0.8', '系统版本', 'system', 'string', 'text', '', 1, '', 0);
INSERT INTO `pes_option` VALUES (-1, 'setting_sort', '设置排序', '{\"\\u4e0a\\u4f20\\u8bbe\\u7f6e\":2,\"\\u7f51\\u7ad9\\u4fe1\\u606f\":1,\"\\u8d26\\u53f7\\u8bbe\\u7f6e\":3}\r\n', '设置排序', 'sort', 'array', 'text', '', 0, '', 0);
INSERT INTO `pes_option` VALUES (1, 'upload_img', '图片格式', '[\".jpg\",\".jpge\",\".bmp\",\".gif\",\".png\"]', '上传设置', 'upload', 'json', 'text', '', 1, '', 0);
INSERT INTO `pes_option` VALUES (2, 'upload_file', '文件格式', '[\".zip\",\".rar\",\".7z\",\".doc\",\".docx\",\".pdf\",\".xls\",\".xlsx\",\".ppt\",\".pptx\",\".txt\"]', '上传设置', 'upload', 'json', 'text', '', 1, '', 0);
INSERT INTO `pes_option` VALUES (3, 'max_upload_size', '上传大小(M)', '30', '上传设置', 'upload', 'string', 'text', '', 1, '', 0);
INSERT INTO `pes_option` VALUES (4, 'siteTitle', '网站标题', '广州格灵文档管理系统', '网站信息', 'system', 'string', 'text', '', 1, '', 1);
INSERT INTO `pes_option` VALUES (5, 'siteLogo', '网站LOGO', '/upload/image/20230228/1677563774837813.jpg', '网站信息', 'system', 'string', 'thumb', '', 1, '', 2);
INSERT INTO `pes_option` VALUES (6, 'siteFooter', '网站页脚', '', '网站信息', 'system', 'string', 'textarea', '', 0, '', 5);
INSERT INTO `pes_option` VALUES (7, 'siteScript', '网站脚本', '', '网站信息', 'system', 'string', 'textarea', '', 0, '若您需要添加网站统计代码，请在此处填写', 6);
INSERT INTO `pes_option` VALUES (8, 'open_register', '开启注册', '1', '账号设置', 'system', 'string', 'radio', '{\"关闭\":\"0\",\"开启\":\"1\"}', 1, '若您需要用户系统，请开启此选项。再根据自身业务，选择对应的账号设置', 0);
INSERT INTO `pes_option` VALUES (9, 'register_group', '注册默认分组', '3', '账号设置', 'system', 'string', 'select', '{\"\\u7cfb\\u7edf\\u7ba1\\u7406\\u7ec4\":1,\"\\u5185\\u90e8\\u7f16\\u8f91\\u7ec4\":2,\"\\u5916\\u90e8\\u8bbf\\u5ba2\":3,\"\\u5185\\u90e8\\u67e5\\u770b\\u7ec4\":4}', 1, '', 0);
INSERT INTO `pes_option` VALUES (10, 'register_review', '账号注册审核', '1', '账号设置', 'system', 'string', 'radio', '{\"审核\":\"0\",\"不审核\":\"1\"}', 1, '不审核的话，将账号可以直接登录系统。', 0);
INSERT INTO `pes_option` VALUES (12, 'verifyLength', '验证码长度', '4', '网站信息', 'system', 'string', 'text', '', 0, '', 8);
INSERT INTO `pes_option` VALUES (13, 'authorize', '软件授权码', '', '网站信息', '', 'string', 'text', '', 0, '', 99);
INSERT INTO `pes_option` VALUES (14, 'keyword', '网站关键词', '', '网站信息', 'system', 'string', 'text', '', 0, '', 3);
INSERT INTO `pes_option` VALUES (15, 'description', '网站描述', '', '网站信息', 'system', 'string', 'textarea', '', 0, 'SEO相关设置', 4);
INSERT INTO `pes_option` VALUES (16, 'siteStyle', '网站样式', '', '网站信息', 'system', 'string', 'textarea', '', 0, '若您希望网站UI不一样，可以在这里填写您的CSS。', 7);

-- ----------------------------
-- Table structure for pes_route
-- ----------------------------
DROP TABLE IF EXISTS `pes_route`;
CREATE TABLE `pes_route`  (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_controller` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `route_param` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `route_rule` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `route_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `route_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `route_listsort` int(11) NOT NULL DEFAULT 0,
  `route_status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`route_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '路由表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pes_route
-- ----------------------------
INSERT INTO `pes_route` VALUES (1, 'Doc-Article-index', 'id', 'article/{id}', '访问文档首页', '17b972ad878fb6e558055db4cbfc48f6', 1, 0);
INSERT INTO `pes_route` VALUES (2, 'Doc-Article-index', 'id,aid', 'article/{id}/{aid}', '访问文档内容', 'd5a839af17068d4e2ca91710924ab425', 2, 0);
INSERT INTO `pes_route` VALUES (3, 'Doc-Login-index', '', 'signin', '登录账号', 'f4ef25d4db58b6cceef9b77855fdf60c', 3, 0);
INSERT INTO `pes_route` VALUES (4, 'Doc-Login-signup', '', 'signup', '注册账号', 'a38c7e2534fc74ee4cbe6839f9f5d57d', 4, 0);
INSERT INTO `pes_route` VALUES (5, 'Doc-Login-findpw', '', 'findpw', '找回密码', '9483cfb7b0fe39348d404b843790585e', 5, 0);
INSERT INTO `pes_route` VALUES (6, 'Doc-Login-resetpw', 'mark', 'resetpw/{mark}', '重置密码', 'bdfe1e23f93e6a72bf7bd8daa162a7e2', 6, 0);

SET FOREIGN_KEY_CHECKS = 1;
