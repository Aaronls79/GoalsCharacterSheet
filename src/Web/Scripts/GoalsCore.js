$(function () {
    $('#signOut').click(function () {
        window.location = '/Account/LogOff'
    });
    $("[type='number']").keydown(function (event) {
        // Allow: backspace, delete, tab, escape, and enter
        if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 27 || event.keyCode == 13 ||
        // Allow: Ctrl+A
            (event.keyCode == 65 && event.ctrlKey === true) ||
        // Allow: home, end, left, right
            (event.keyCode >= 35 && event.keyCode <= 40)) {
            // let it happen, don't do anything
            return;
        }
        else {
            // Ensure that it is a number and stop the keypress
            if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105)) {
                event.preventDefault();
            }
        }
    });
});
var goalsForm = function () {
    var controllerName = 'home';
    var dialog;
    var that;
    return {
        setError: function (content) {
            var errorAlert = $('<div class="alert alert-danger">' +
                                '<button type="button" class="close" data-dismiss="alert">' +
                                    '&times;</button><p>' + content + '</p></div>');
            $('.goalsError').html(errorAlert);
        },
        setMessage: function (content) {
            $('.goalsInfo').html(content).fadeIn(1000, function () {
                $('.goalsInfo').fadeOut(1000);
            });
        },
        getActionUrl: function (action, id) {
            if (id != undefined && id != 0) {
                action = action + "/" + id;
            }
            return "/" + controllerName + "/" + action;
        },
        modalClose: function () {
            if (dialog != null || dialog != undefined) {
                dialog.hide();
            }
            return that;
        },
        setModalContent: function (content) {
            if (dialog != null || dialog != undefined) {
                $(dialog).find('.modal-body').html(content);
            }
            return that;
        },
        modalLoading: function () {
            goalsForm.setModalContent(goalsForm.getLoader());
            return that;
        },
        getId: function () {
            return $("#Id").val();
        },
        getValues: function (name) {
            return $('#' + controllerName + name).serialize();
        },
        setup: function (controller) {
            if (controller != undefined && controller != null) {
                controllerName = controller;
            } else {
                controller = $('#ControllerName').val();
            }
            that = this;
            return that;
        },
        getCreate: function (title) {
            if (title == undefined || title == '') {
                title = "Create New";
            }
            dialog = goalsForm.getModal(title);
            $.get(getActionUrl('Create'), function (data) {
                goalsForm.setModalContent(data);
            });
            return that;
        },
        postCreate: function (onSuccess, onFailure) {
            var values = goalsForm.getValues('Create');
            goalsForm.postTo('Create', values, onSuccess, onFailure);
            return that;
        },
        getEdit: function (id, title) {
            if (id == undefined || id == 0) {
                id = goalsForm.getId();
            }
            if (title == undefined || title == '') {
                title = "Edit Item";
            }
            dialog = goalsForm.getModal(title);

            $.get(goalsForm.getActionUrl('edit') + '/' + id, function (data) {
                goalsForm.setModalContent(data);
            });
            return that;
        },
        getDetails: function (id, title) {
            if (id == undefined || id == 0) {
                id = goalsForm.getId();
            }
            if (title == undefined || title == '') {
                title = "Details";
            }
            dialog = goalsForm.getModal(title);

            $.get(goalsForm.getActionUrl('Details') + '/' + id, function (data) {
                goalsForm.setModalContent(data);
            });
            return that;
        },
        postEdit: function (onSuccess, onFailure) {
            var values = goalsForm.getValues('Edit');

            goalsForm.postTo('Edit', values, onSuccess, onFailure);
            return that;
        },
        postTo: function (action, values, onSuccess, onFailure) {
            $.post(goalsForm.getActionUrl(action), values, function (data) {
                if (data.Failed) {
                    if (onFailure != undefined && onFailure != null) {
                        onFailure(data);
                    } else {
                        goalsForm.setError(data.Message);
                    }
                } else {
                    if (onSuccess != undefined && onSuccess != null) {
                        onSuccess(data);
                    } else {
                        goalsForm.setMessage(data.Message);
                    }
                }
            }, 'json');
            return that;
        },
        getDelete: function (id, title) {
            if (id == undefined || id == 0) {
                id = goalsForm.getId();
            }
            if (title == undefined || title == '') {
                title = "Delete Item";
            }
            dialog = goalsForm.getModal(title);
            $.get(goalsForm.getActionUrl('delete') + '/' + id, function (data) {
                goalsForm.setModalContent(data);
            });
            return that;
        },
        postDelete: function (id, onSuccess, onFailure) {
            if (id == undefined || id == 0) {
                id = goalsForm.getId();
            }
            var values = { 'id': id };
            goalsForm.postTo('Delete', values, onSuccess, onFailure);
            return that;
        },
        getSelect: function (title, fields) {
            dialog = goalsForm.getModal(title);

            $.post('/' + controllerName + '/SelectList?fields=' + fields, function (data) {
                goalsForm.setModalContent(data);
            });
            return that;
        },
        getModal: function (title) {
            var modal = $('<div class="modal hide fade">' +
                    '<div class="modal-header">' +
                        '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>' +
                        '<h3>' + title + '</h3>' +
                    '</div>' +
                    '<span style="display:none;" class="goalsInfo label label-success"></span>' +
                    '<div class="goalsError"></div>' +
                    '<div class="modal-body">' +
                        goalsForm.getLoader() +
                    '</div>' +
                '</div>');

            modal.modal();

            modal.on('hidden', function () {
                modal.remove();
            });
            return modal;
        },
        getLoader: function () {
            return '<div class="progress progress-striped active">' +
                        '<div class="bar" style="width: 100%;"></div>' +
                    '</div>';
        }
    };
} ();
