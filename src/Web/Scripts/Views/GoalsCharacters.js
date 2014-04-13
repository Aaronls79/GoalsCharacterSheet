$(function () {

    $('#GoalsTraits').find('[type="number"]').keyup(AddTraits);
    $('#GoalsTraits').find('[type="number"]').click(AddTraits);
    $('#Print').click(function () {
        var id = goalsForm.setup('GoalsCharacters').getId();
        window.open(
            goalsForm.setup('Print').getActionUrl('index', id)
        );
    });
    $('#SelectClass').click(function () {
        goalsForm.setup('GoalsClasses').getSelect('Select Class', 'Name,BaseClass,Page');
    });
    $('#SelectRace').click(function () {
        goalsForm.setup('GoalsRaces').getSelect('Select Race', 'Name,Notes,Page');
    });
    $('#AddPower').click(function () {
        goalsForm.setup('GoalsPowers').getSelect('Select Power', 'Name,Type,PowerClass,Cost,Page');
    });
    $('#AddEquipment').click(function () {
        goalsForm.setup('GoalsEquipments').getSelect('Select Equipment', 'Name,Type,Cost,Page');
    });
    $('#AddSpell').click(function () {
        goalsForm.setup('GoalsSpells').getSelect('Select Spell', 'Name,StartingLevel,Uses,School,Page');
    });

    $('.cancel').click(function () {
        window.location = '/home/index';
    });
    $('.save').click(function () {
        goalsForm.setup('GoalsCharacters');
        goalsForm.postEdit();
    });

    $('#GoalsSpells').find('.removeRow').live('click', function () {
        var row = $(this).parent().parent().parent();
        goalsForm.setup('GoalsCharacters').postEdit();
        var selectedId = $(this).parent().parent().parent().find('.rowId').val();
        goalsForm.setup('GoalsSpells').postDelete(selectedId, function (data) {
            $(row).fadeOut(function () { $(this).remove(); })
        });
    });
    $('#GoalsSpells').find('.rowDetails').live('click', function () {
        var selectedId = $(this).parent().parent().parent().find('.rowId').val();
        goalsForm.setup('GoalsSpells').getDetails(selectedId, "Spell Details");
    });

    $('#GoalsPowers').find('.removeRow').live('click', function () {
        var row = $(this).parent().parent().parent();
        goalsForm.setup('GoalsCharacters').postEdit();
        var selectedId = $(this).parent().parent().parent().find('.rowId').val();
        goalsForm.setup('GoalsPowers').postDelete(selectedId, function (data) {
            $(row).fadeOut(function () { $(this).remove(); })
        });
    });
    $('#GoalsPowers').find('.rowDetails').live('click', function () {
        var selectedId = $(this).parent().parent().parent().find('.rowId').val();
        goalsForm.setup('GoalsPowers').getDetails(selectedId, "Power Details");
    });
    $('#GoalsEquipments').find('.removeRow').live('click', function () {
        var row = $(this).parent().parent().parent();
        goalsForm.setup('GoalsCharacters').postEdit();
        var selectedId = $(this).parent().parent().parent().find('.rowId').val();
        goalsForm.setup('GoalsEquipments').postDelete(selectedId, function (data) {
            $(row).fadeOut(function () { $(this).remove(); })
        });
    });
    $('#GoalsEquipments').find('.rowDetails').live('click', function () {
        var selectedId = $(this).parent().parent().parent().find('.rowId').val();
        goalsForm.setup('GoalsEquipments').getDetails(selectedId, "Equipment Details");
    });

    $('#RaceDetails').click(function () {
        var selectedId = $('#GoalsRaceId').val();
        goalsForm.setup('GoalsRaces').getDetails(selectedId, "Race Details");
    });

    $('#ClassDetails').click(function () {
        var selectedId = $('#GoalsClassId').val();
        goalsForm.setup('GoalsClasses').getDetails(selectedId, "Race Details");
    });

    $('#GoalsSpellsSelect').find('.select').live('click', function () {
        goalsForm.setup('GoalsCharacters');
        var selectedId = $(this).parent().parent().find('.rowId').val();
        var characterId = goalsForm.getId();
        var values = { id: selectedId, characterId: characterId };
        goalsForm.setup('GoalsSpells').postTo('AddSpell', values, function (data) {
            location.reload();
        });
    });
    $('#GoalsEquipmentsSelect').find('.select').live('click', function () {
        goalsForm.setup('GoalsCharacters').postEdit();
        var selectedId = $(this).parent().parent().find('.rowId').val();
        var characterId = goalsForm.getId();
        var values = { id: selectedId, characterId: characterId };
        goalsForm.setup('GoalsEquipments').postTo('AddEquipment', values, function (data) {
            location.reload();
        });
    });
    $('#GoalsPowersSelect').find('.select').live('click', function () {
        goalsForm.setup('GoalsCharacters').postEdit();
        var selectedId = $(this).parent().parent().find('.rowId').val();
        var characterId = goalsForm.getId();
        var values = { id: selectedId, characterId: characterId };
        goalsForm.setup('GoalsPowers').postTo('AddPower', values, function (data) {
            location.reload();
            goalsForm.setMessage(data.Message);
        });
    });

    $('#GoalsRacesSelect').find('.select').live('click', function () {
        goalsForm.setup('GoalsCharacters');

        var id = $(this).parent().parent().find('.rowId').val();
        var currentId = $('#GoalsRaceId').val();

        if (id == currentId) {
            goalsForm.modalClose();
            return false;
        }

        if (currentId != undefined && currentId != 0 && id != currentId) {
            if (!confirm('You are about to change you race.\n' +
                        'This will reset all custom traits,power,spells and equipment.\n' +
                        'Are you sure you want to continue? ')) {
                return false;
            }
        }

        $('#GoalsRaceId').val(id);
        goalsForm.modalLoading();
        goalsForm.postEdit(function () {
            location.reload();
        });
    });
    $('#GoalsClassesSelect').find('.select').live('click', function () {
        goalsForm.setup('GoalsCharacters');

        var id = $(this).parent().parent().find('.rowId').val();
        var currentId = $('#GoalsClassId').val();

        if (id == currentId) {
            goalsForm.modalClose();
            return false;
        }

        if (currentId != undefined && currentId != 0 && id != currentId) {
            if (!confirm('You are about to change you class.\n' +
                        'This will reset all custom traits,power,spells and equipment.\n' +
                        'Are you sure you want to continue? ')) {
                return false;
            }
        }

        $('#GoalsClassId').val(id);
        goalsForm.modalLoading();
        goalsForm.postEdit(function () {
            location.reload();
        });
    });
});
function AddTraits() {
    $('#TotalTraitClass').val(
            AddValues($('#BaseTraitClass').val(), $('#ModTraitClass').val())
        );
    $('#TotalTraitStrength').val(
            AddValues($('#BaseTraitStrength').val(), $('#ModTraitStrength').val())
        );
    $('#TotalTraitDefense').val(
            AddValues($('#BaseTraitDefense').val(), $('#ModTraitDefense').val())
        );
    $('#TotalTraitToughness').val(
            AddValues($('#BaseTraitToughness').val(), $('#ModTraitToughness').val())
     );
    $('#BaseTraitInitiative').val(
            AddValues($('#TotalTraitClass').val(), $('#TotalTraitDefense').val())
     );
    $('#TotalTraitInitiative').val(
            AddValues($('#BaseTraitInitiative').val(), $('#ModTraitInitiative').val())
     );

}
function AddValues(value1, value2) {
    if (parseInt(value1) == NaN) {
        value1 = 0;
    }
    if (parseInt(value2) == NaN) {
        value2 = 0;
    }
    return parseInt(value1) + parseInt(value2);
}
