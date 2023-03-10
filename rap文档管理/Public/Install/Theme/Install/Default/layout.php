<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title><?= $title ?></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="/favicon.ico">
    <link rel="stylesheet" href="<?= str_replace("/Install", "", DOCUMENT_ROOT) ?>/Theme/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="<?= str_replace("/Install", "", DOCUMENT_ROOT) ?>/Theme/assets/css/ui-dialog.css"/>
    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="<?= str_replace("/Install", "", DOCUMENT_ROOT) ?>/Theme/assets/js/jquery.min.js"></script>
    <script src="<?= str_replace("/Install", "", DOCUMENT_ROOT) ?>/Theme/assets/js/amazeui.min.js"></script>
    <script src="<?= str_replace("/Install", "", DOCUMENT_ROOT) ?>/Theme/assets/js/dialog-min.js"></script>
    <script src="<?= str_replace("/Install", "", DOCUMENT_ROOT) ?>/Theme/assets/js/app.js"></script>
    <!--<![endif]-->
    <style>
        html, body {
            -moz-background-size: 100% 100%;
            background-size: cover;
            background: url('<?=str_replace("/Install", "", DOCUMENT_ROOT)?>/Theme/assets/i/lattice.png');
        }

        .header {
            margin-top: 20px;
            text-align: center;
        }

        .header h1 {
            font-size: 200%;
            color: #333;
            margin-top: 30px;
        }

        .header p {
            font-size: 14px;
        }
        .am-panel-hd{
            color: #444;
            background-color: #f5f5f5;
            border-top: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
            margin: 20px 0;
            text-align: center;
        }
        label{
            margin: 0;
        }
        .am-alert{
            font-size: 1.2rem !important;
        }
        .install{
            background-color:#fff;
            border-radius: 4px;
            color: #333;
        }
        .install .ui-dialog-header{
            border-radius: 4px;
            background: #F8F8F8;
        }

        .agree h2{
            padding-bottom: 10px;
            border-bottom: 1px solid #cfcfcf;
        }
    </style>
</head>
<body>

<div class="am-g am-padding-top">
    <div class="am-u-lg-8 am-u-md-8 am-u-sm-centered">
        <div class="am-panel am-panel-default am-text-sm">
            <div class="am-panel-bd">
                <div class="pesad"></div>
                <script>
                    $(function () {
                        $.getJSON('https://www.pescms.com/pesad/2', function (data) {
                            if (data.status == 200) {
                                for (var i = 0; i < data.data.length; i++) {
                                    $('.pesad').append(data.data[i]);
                                }
                            } else {
                                $('.pesad').append('<a href="https://www.pescms.com/Page/ad.html" style="color: #fff;"><div class="am-vertical-align" style="background: #61cff9;height: 70px;text-align: center;"><div class="am-vertical-align-middle am-text-xxxl">????????????</div></div></a>');
                            }
                        })
                    })
                </script>

                <div class="header">
                    <h1 class="am-margin-top-0"><?= $title ?>
                        <small class="am-text-xs">v<?= $version ?></small>
                    </h1>
                    <p class="am-text-danger">?????? ?????????????????????????????????????????????????????????????????????????????????????????????</p>
                    <hr/>
                </div>
                <?php include $file; ?>

            </div>
            <form method="POST" class="am-form am-form-horizontal" data-am-validator>
                <?php require 'Index/Index_config.php' ?>
                <?php require 'Index/Index_option.php' ?>
                <hr/>
                <div class="am-g am-g-collapse am-margin-bottom">
                    <div class="am-u-sm-12 am-u-sm-centered am-text-center am-margin-bottom-xs">
                        <div class="am-checkbox am-inline-block">
                            <label>
                                <input type="checkbox" class="i-do"> <strong>?????????????????????<a href="https://www.pescms.com/article/view/-1.html" target="_blank">???<?= $program ?>?????????????????????</a> </strong>
                            </label>

                        </div>
                    </div>

                    <div class="am-u-sm-12 am-u-sm-centered am-text-center">
                        <div class="am-text-danger install-tips am-margin-bottom-xs">
                            [??????????????????????????????????????????]
                        </div>
                        <button type="submit" class="am-btn am-btn-success am-btn-sm begin-install" disabled >????????????</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="pes-success" style="display: none">
    <div class="am-block am-text-center am-margin-top">
        <a href="<?= str_replace("Install", "", DOCUMENT_ROOT) ?>"  target="_blank" class="am-btn am-btn-success am-margin-left-sm am-inline am-btn-sm">????????????</a>
    </div>
</div>

<script>
    $(function(){
        var progress = $.AMUI.progress;

        $.ajax({
            url:'https://www.pescms.com/UserProtocol',
            dataType:'JSON',
            beforeSend:function(){
                progress.start();
            },
            success:function(data){
                $(".agree").html(data.data.replace(/\{program\}/g, "<?= $program ?>"));
                progress.done();
            },
            error:function(){
                $(".agree").html('????????????????????????????????????<a href="https://www.pescms.com/article/view/-1.html" target="_blank">https://www.pescms.com/article/view/-1.html</a>??????????????????')
                progress.done();
            }
        })

        var data = {
            id: 2,
            type: 1,
            version : '<?= $version ?>',
            sessionid : '<?= $this->session()->getId() ?>'
        };
        $.post('https://www.pescms.com/?g=Api&m=Statistics&a=action', data, function (data) {
        }, 'JSON')

        $('body').on('submit', '.am-form', function () {
            var d = dialog({
                title: '??????',
                content : '<div class="am-text-center"><i class="am-icon-spinner am-icon-pulse "></i> ???????????????...</div>',
                width : '500',
                fixed: true,
                skin: 'install'
            });


            var formData = $(this).serialize();
            $.ajax({
                url: '',
                data: formData,
                type: 'POST',
                dataType: 'json',
                beforeSend : function(){
                    progress.start();
                    d.showModal();
                },
                success: function (data) {
                    console.log('?????????????????????????????????:')
                    console.log(data)
                    console.log('')

                    if(data.status == 0){
                        d.content('<div class="am-text-center"><i class="am-icon-close am-text-danger"></i> '+data.msg + '</div>');
                    }else if(data.status == 200){
                        $('.mange-url').attr('href', data.data)
                        var showManage = $('.pes-success').html();
                        d.content('<div class="am-text-center"><i class="am-icon-check am-text-success"></i> ????????????!</div>' + showManage);
                    }else{
                        d.content('<div class="am-text-center"><i class="am-icon-close am-text-danger"></i> ??????????????????????????????</div>');
                    }
                },
                complete : function(){
                    progress.done();
                },
                error: function (obj) {
                    console.log('????????????????????????????????????:')
                    console.log(obj)
                    console.log("")

                    d.title("??????????????? :'(");
                    var responseText = obj.responseJSON == '' || obj.responseJSON == undefined ? obj.responseText : obj.responseJSON.msg
                    d.content("<p class='am-text-break'>Status Code: " + obj.status + " " + obj.statusText + "</p>" +
                        "<p class='am-text-break'>Response Text: " + responseText + "</p>" +
                        "<p>?????????<a href=\"http://www.pescms.com/d/v/10/37\" target='_blank'>?????????</a>??????????????????</p>" +
                        "<p>???????????????????????????????????????????????????STRICT_TRANS_TABLES.txt??????</p>"
                    );
                }
            })

            return false;
        })

        $('.i-do').on('click', function (){
            if($(this).prop('checked') == true){
                $('.am-btn-success').removeAttr('disabled')
                $('.install-tips').hide();
            }else{
                $('.am-btn-success').attr('disabled', 'disabled')
                $('.install-tips').show();
            }
        })

    })
</script>
</body>
</html>