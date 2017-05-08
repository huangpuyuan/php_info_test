(function () {
    var ckEditor = CKEDITOR.replace('editor1');
    /**
     * 处理 Bootstrap modal 与 ckeditor的失去焦点的bug。
     */
    $('#modal').removeAttr('tabindex');
    $('#modal').focusout(function () {
        if ($('.cke_dialog_background_cover').css('display') == 'block') {

            $(this).css({'position': 'relative'});
            setTimeout(function () {
                $('#modal').css({'position': 'fixed'});
            }, 10);
        }
    });

    /**
     *
     * @param ctrlName
     * @param uploadUrl
     */
//        function initFileInput(ctrlName, uploadUrl) {
//            var control = $('#' + ctrlName);
//            control.fileinput({
//                language: 'zh', //设置语言
//                uploadUrl: uploadUrl, //上传的地址
//                allowedFileExtensions: ['jpg', 'png', 'gif'],//接收的文件后缀
//                showUpload: true, //是否显示上传按钮
//                showCaption: true,//是否显示标题
//                browseClass: "btn btn-primary btn-sm",//按钮样式
//                previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
//            });
//        };
//
//        initFileInput("author-file", "/picture");


    var sidebarItem = $('.sidebar').find('.nav-item > a');

    init();

    function init() {
        switchTab();
        getDataByAjax();
        addData();
        submitDataListen();
    }

    // JQuery 实现tab跳转
    function switchTab() {
        sidebarItem.on('click', function () {
            sidebarItem.removeClass('active');
            var idx = $(this).addClass('active').parent().data('itemId');
            $('main').hide();
            $('#dashboard' + idx).show();
        });
    }

    /**
     *增加数据
     *
     */
    function addData() {
        $('#dashboard1 > h1 >button').on('click', function (e) {
            $('#modal .modal-body').find('input').val('');
            ckEditor.setData('');
        });
    }

    /**
     *模板编辑,删除模板
     * @param data
     */
    function editor(data) {
        $('#content').find('.editor').on('click', function () {
            var editorIdx = $(this).data('id');
            var value = data[editorIdx - 1];
            var urlHead = 'http://zt.hkstv.tv/';
            var authorImgUrl = urlHead + value.filename;
            var ImgUrl = urlHead + value.picture;

            console.log(value);
            $('#modal').modal({
                keyboard: true
            });
            $('.modal-body').find('#author').val(value.author);
            $('.modal-body').find('#author-file-url').val(authorImgUrl)
                .parent().next('a.col-form-label').attr('href', authorImgUrl);
            $('.modal-body').find('#title').val(value.title);
            $('.modal-body').find('#img-file-url').val(ImgUrl)
                .parent().next('a.col-form-label').attr('href', ImgUrl);
            ckEditor.setData(value.text);
        });

        // 删除数据
        $('#content').find('.delete').on('click', function () {
            var deleteIdx = $(this).data('id');
            layer.confirm('您确定要删除这条吗？', {
                btn: ['确定', '取消'] //按钮
            }, function () {
                // 删除
                layer.msg('删除成功', {icon: 1, time: 600});
            }, function () {
                // 返回
            });
        })
    }

    /**模板渲染
     *
     * @param data
     */

    function render(data) {
        $.each(data, function (idx, item) {
            var tpl = `<tr>
                            <th>${idx + 1}</th><th>${item.id}</th><th>${item.author}</th><th>《${item.title}》</th>
                            <th><a href="javascript:;" class="showDetails" data-id="${idx + 1}">详情预览</a></th>
                            <th>
                            <button class="btn btn-info btn-sm mr-2 editor" data-id="${idx + 1}">编辑</button>
                            <button class="btn btn-danger btn-sm delete" data-id="${idx + 1}">删除</button>
                            </th>
                        </tr>`;
            $('#content').append(tpl);
        });

        $('.showDetails').on('click', function () {
                var i = $(this).data('id');
                showDetails(data[i]);
            }
        );

        editor(data);

    }

    function showDetails(item) {
        var $details = $('#details');
        $details.modal({
            keyboard: true,
            show: true
        });
        $details.find('.modal-title').text(`《${item.title}》`);
        $details.find('.modal-body > .picture')
            .css('background-image', 'url(http://zt.hkstv.tv/' + item.picture + ')');
        $details.find('.modal-body > .row img')
            .attr('src', 'http://zt.hkstv.tv/' + item.filename).css('margin-top', '20px;')
            .parent().next().find('h5').text(item.author)
            .next().html(item.text);
    }

    function getDataByAjax() {
        $.getJSON('/myworks/api/data/data.php', function (res) {
            if (res.code === 200) {
                var data = res.data;
                // console.log(data);
                render(data);
            } else {
                layer.alert('服务器数据库加载失败', {
                    icon: 2,
                    offset: '130px'
                });
            }
        });
    }

    function submitDataListen() {
        $('#modal').on('submit', function (e) {
            e.preventDefault();
            console.log(1);
            sendDataByAjax();
        });

    }

    function sendDataByAjax() {
        var formData = {
            'author': $('#author').val(),
            'author_src': $('#author-file').val(),
            'title': $('#title').val(),
            'img_src': $('#img-file').val(),
            'text': ckEditor.getData()
        };

        $.post('./checkForm.php',
            formData,
            function (result) {
                console.log(result);
                if (result.code == 200) {
                    layer.msg('提交成功', {
                        icon: 16,
                        shade: .01,
                        time: 600
                    }, function () {
                        $('#modal').modal({
                            show: false
                        });
                    });
                } else {
                    layer.alert('提交失败', {
                        icon: 2,
                        offset: '130px'
                    });
                }
            }, 'JSON')
    }


})()