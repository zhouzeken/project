<script type="text/plain" id="<?= $field['field_name']; ?>" style="height:250px;"><?= htmlspecialchars_decode($field['value'] ?? '') ?></script>
<script>
    var ue_<?=$field['field_name']?> = UE.getEditor('<?= $field['field_name']; ?>', {
        textarea: '<?= $field['field_name']; ?>'
    });
</script>