<? /*
    * $Source: /home/xubuntu/berlios_backup/github/tmp-cvs/otmp/Repository/Release1/Attic/otmpfooter.php,v $
    * $Revision: 1.2 $
    * $Id: otmpfooter.php,v 1.2 2001/11/23 08:03:04 darkpact Exp $
    *
    * This footer should be inserted in all files.
    *
    * Following Variables must be defined:
    *
    * $maindir - should allready be defined for otmpheader
    * $userdir - path to the user directory from this file
    * $docsdir - path to the docs directory from this file
    * $helpdir - path to the help directory from this file
    */

echo '<table width="100%">
  <tr>
    <td align="center"><a href="'; echo $maindir; echo 'main.php?langs='; echo $langs; echo '">'; echo $mainpagename; echo'</a> | <a href="'; echo $docsdir; echo 'documentlist.php?langs='; echo $langs; echo '?list=all">'; echo $documentpagename; echo'</a> | <a href="'; echo $maindir; echo 'contact.php?langs='; echo $langs; echo'">'; echo $contactpagename; echo'</a> | <a href="'; echo $helpdir; echo 'help.php?langs='; echo $langs; echo '">'; echo $helppagename; echo'</a> | <a href="'; echo $userdir; echo 'login.php?langs='; echo $langs; echo'">'; echo $loginpagename; echo'</a></td>
  </tr>
  <tr>
    <td align="center"><a href="'; echo $maindir; echo 'index.html">'; echo $languagepagename; echo'</a>
  </tr>
</table>

<p align="center" class="footer">
  Revision: '; echo $revision; echo' <i>'; echo $datum; echo '</i> &copy; 2001 otmp-developer</p>
</body>
</html>
';
?>
