<form action="<?=$CFG->wwwroot?>/admin/programm.php" method="POST">
  Programm:
  <select name="prgid">
    <option value="" <?=isempty($frm['filetyp'],0)?'selected':''?>>bitte Programm w&auml;hlen</option>
    <?=db_listbox(sql_SQL4PrgIdAndName(),nvl($frm['filetyp']))?> 
  </select>
  <input type="submit" name="submit" value="show">
</form>
