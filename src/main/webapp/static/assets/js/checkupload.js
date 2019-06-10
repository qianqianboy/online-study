$(document).ready(function() {
    $('#defaultForm').bootstrapValidator({
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
            	image: {
                    validators: {
                        notEmpty: {
                            message: '课程封面不能为空'
                        }
                    }
                },
                title: {
                    validators: {
                        notEmpty: {
                            message: '课程标题不能为空'
                        },
                        stringLength: {
                            min: 3,
                            max: 18,
                            message: '课程标题长度必须在3~18个字符之间'
                        }
                    }
                }
            }
        });
});