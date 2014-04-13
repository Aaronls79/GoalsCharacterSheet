$(function () {
    goalsForm.setup();
    $('#create').click(function () {
        goalsForm.setup('GoalsCharacters').postCreate(function (data) {
            window.location = '/GoalsCharacters/Edit/' + data.Id;
        });
    });

    $('.remove').click(function () {
        var rowId = $(this).parent().parent().parent().find('.rowId').val();
        if (!confirm('Are you sure you want to delete your character?')) {
            return;
        }
        goalsForm.setup('GoalsCharacters').postDelete(rowId, function () {
            location.reload();
        });
    });

    $('.edit').click(function () {
        var rowId = $(this).parent().parent().parent().find('.rowId').val();
        window.location = '/GoalsCharacters/Edit/' + rowId;
    });
});