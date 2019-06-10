$(document).ready(function() {
    $('#login-form').bootstrapValidator({
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            email: {
                validators: {
                    notEmpty: {
                        message: '邮箱不能为空喔!'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: '密码不能为空喔!'
                    },
                    stringLength: {
                        min: 6,
                        max: 18,
                        message: '密码长度必须在6~18个字符之间'
                    }
                }
            }
        }
    });
});