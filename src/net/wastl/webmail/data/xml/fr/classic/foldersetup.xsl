<?xml version="1.0" encoding="ISO-8859-1"?>
<!--
$Id: foldersetup.xsl 126 2008-10-31 03:41:09Z unsaved $

Copyright 2008 by the JWebMail Development Team and Sebastian Schaffert.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-->
<!-- This is part of the French translation of JWebMail - Christian SENET - senet@lpm.u-nancy.fr - 2002 -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8"/>

    <xsl:variable name="imgbase" select="/USERMODEL/STATEDATA/VAR[@name='img base uri']/@value"/>
    <xsl:variable name="base" select="/USERMODEL/STATEDATA/VAR[@name='base uri']/@value"/>
    <xsl:variable name="session-id" select="/USERMODEL/STATEDATA/VAR[@name='session id']/@value"/>

    <xsl:template match="/">

    <HTML>
      <HEAD>
        <TITLE>Boite aux Lettres JWebMail de <xsl:value-of select="/USERMODEL/USERDATA/FULL_NAME"/>: Setup des Dossiers</TITLE>
        <META CONTENT="AUTHOR" VALUE="Sebastian Schaffert"/>
        <META CONTENT="GENERATOR" VALUE="JWebMail 1.0.1 XSL"/>
      </HEAD>

      <BODY bgcolor="#ffffff">

        <TABLE BGCOLOR="#dddddd" CELLSPACING="0" BORDER="0">
          <TR>
            <TD VALIGN="CENTER">
              <IMG SRC="{$imgbase}/images/btn-folders.png"/>
            </TD>
            <TD VALIGN="CENTER">
              <FONT SIZE="+2"><STRONG>Setup des Dossiers Webmail de <xsl:value-of select="/USERMODEL/USERDATA/FULL_NAME"/></STRONG></FONT> (<A HREF="{$base}/help?session-id={$session-id}&amp;helptopic=folder-setup">Aide</A>) <BR/>
              <EM>Nom de login <xsl:value-of select="normalize-space(/USERMODEL/USERDATA/LOGIN)"/></EM><BR/>
              <EM>Compte existant depuis le <xsl:apply-templates select="/USERMODEL/STATEDATA/VAR[@name='first login']"/></EM>
            </TD>
          </TR>
          <TR>
            <TD COLSPAN="2" BGCOLOR="#aaaaaa"><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></TD>
          </TR>
          <TR>
            <TD COLSPAN="2"><STRONG>Vous avez les options suivantes:</STRONG></TD>
          </TR>
          <TR>
            <TD>
              <A HREF="{$base}/folder/setup?session-id={$session-id}&amp;method=mailbox">Configuration de Bo�tes aux Lettres</A>
            </TD>
            <TD>
              JWebMail vous autorise � avoir des connexions vers plusieurs h�tes IMAP ou POP. Vous pouvez ajouter ou supprimer de telles connexions ici.
            </TD>
          </TR>
          <TR>
            <TD>
              <A HREF="{$base}/folder/setup?session-id={$session-id}&amp;method=folder">Configuration des Dossiers</A>
            </TD>
            <TD>
              JWebMail affichera une arborescence de dossiers (IMAP uniquement) pour chaque bo�te aux lettres dans laquelle vous pourrez choisir d'ajouter, masquer ou
              supprimer des sous-dossiers individuellement.
            </TD>
          </TR>
        </TABLE>
      </BODY>
    </HTML>
  </xsl:template>
</xsl:stylesheet>