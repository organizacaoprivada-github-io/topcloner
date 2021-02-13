﻿/*
 Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.html or http://ckeditor.com/license
 */

/**
 * @fileOverview Defines the {@link CKEDITOR.lang} object, for the
 * Afrikaans language.
 */

/**#@+
 @type String
 @example
 */

/**
 * Contains the dictionary of language entries.
 * @namespace
 */
CKEDITOR.lang['af'] =
{
    /**
     * The language reading direction. Possible values are "rtl" for
     * Right-To-Left languages (like Arabic) and "ltr" for Left-To-Right
     * languages (like English).
     * @default 'ltr'
     */
    dir: 'ltr',

    /*
     * Screenreader titles. Please note that screenreaders are not always capable
     * of reading non-English words. So be careful while translating it.
     */
    editorTitle: 'Teksverwerker, %1, druk op ALT 0 vir hulp.',

    // ARIA descriptions.
    toolbars: 'Editor toolbars', // MISSING
    editor: 'Teksverwerker',

    // Toolbar buttons without dialogs.
    source: 'Bron',
    newPage: 'Nuwe bladsy',
    save: 'Bewaar',
    preview: 'Voorbeeld',
    cut: 'Knip',
    copy: 'Kopiëer',
    paste: 'Plak',
    print: 'Druk',
    underline: 'Onderstreep',
    bold: 'Vet',
    italic: 'Skuins',
    selectAll: 'Selekteer alles',
    removeFormat: 'Verwyder opmaak',
    strike: 'Deurstreep',
    subscript: 'Onderskrif',
    superscript: 'Bo-skrif',
    horizontalrule: 'Horisontale lyn invoeg',
    pagebreak: 'Bladsy-einde invoeg',
    pagebreakAlt: 'Bladsy-einde',
    unlink: 'Verwyder skakel',
    undo: 'Ontdoen',
    redo: 'Oordoen',

    // Common messages and labels.
    common: {
        browseServer: 'Blaai op bediener',
        url: 'URL',
        protocol: 'Protokol',
        upload: 'Oplaai',
        uploadSubmit: 'Stuur na bediener',
        image: 'Afbeelding',
        flash: 'Flash',
        form: 'Vorm',
        checkbox: 'Merkhokkie',
        radio: 'Radioknoppie',
        textField: 'Teksveld',
        textarea: 'Teks-area',
        hiddenField: 'Blinde veld',
        button: 'Knop',
        select: 'Keuseveld',
        imageButton: 'Afbeeldingsknop',
        notSet: '<geen instelling>',
        id: 'Id',
        name: 'Naam',
        langDir: 'Skryfrigting',
        langDirLtr: 'Links na regs (LTR)',
        langDirRtl: 'Regs na links (RTL)',
        langCode: 'Taalkode',
        longDescr: 'Lang beskrywing URL',
        cssClass: 'CSS klasse',
        advisoryTitle: 'Aanbevole titel',
        cssStyle: 'Styl',
        ok: 'OK',
        cancel: 'Kanselleer',
        close: 'Sluit',
        preview: 'Voorbeeld',
        generalTab: 'Algemeen',
        advancedTab: 'Gevorderd',
        validateNumberFailed: 'Hierdie waarde is nie \'n getal nie.',
        confirmNewPage: 'Alle wysiginge sal verlore gaan. Is u seker dat u \'n nuwe bladsy wil laai?',
        confirmCancel: 'Sommige opsies is gewysig. Is u seker dat u hierdie dialoogvenster wil sluit?',
        options: 'Opsies',
        target: 'Doel',
        targetNew: 'Nuwe venster (_blank)',
        targetTop: 'Boonste venster (_top)',
        targetSelf: 'Selfde venster (_self)',
        targetParent: 'Oorspronklike venster (_parent)',
        langDirLTR: 'Links na Regs (LTR)',
        langDirRTL: 'Regs na Links (RTL)',
        styles: 'Styl',
        cssClasses: 'CSS klasse',
        width: 'Breedte',
        height: 'Hoogte',
        align: 'Oplyn',
        alignLeft: 'Links',
        alignRight: 'Regs',
        alignCenter: 'Sentreer',
        alignTop: 'Bo',
        alignMiddle: 'Middel',
        alignBottom: 'Onder',
        invalidHeight: 'Hoogte moet \'n getal wees',
        invalidWidth: 'Breedte moet \'n getal wees.',
        invalidCssLength: 'Value specified for the "%1" field must be a positive number with or without a valid CSS measurement unit (px, %, in, cm, mm, em, ex, pt, or pc).', // MISSING
        invalidHtmlLength: 'Value specified for the "%1" field must be a positive number with or without a valid HTML measurement unit (px or %).', // MISSING
        invalidInlineStyle: 'Value specified for the inline style must consist of one or more tuples with the format of "name : value", separated by semi-colons.', // MISSING
        cssLengthTooltip: 'Enter a number for a value in pixels or a number with a valid CSS unit (px, %, in, cm, mm, em, ex, pt, or pc).', // MISSING

        // Put the voice-only part of the label in the span.
        unavailable: '%1<span class="cke_accessibility">, nie beskikbaar nie</span>'
    },

    contextmenu: {
        options: 'Konteks Spyskaart-opsies'
    },

    // Special char dialog.
    specialChar: {
        toolbar: 'Voeg spesiaale karakter in',
        title: 'Kies spesiale karakter',
        options: 'Spesiale karakter-opsies'
    },

    // Link dialog.
    link: {
        toolbar: 'Skakel invoeg/wysig',
        other: '<ander>',
        menu: 'Wysig skakel',
        title: 'Skakel',
        info: 'Skakel informasie',
        target: 'Doel',
        upload: 'Oplaai',
        advanced: 'Gevorderd',
        type: 'Skakelsoort',
        toUrl: 'URL',
        toAnchor: 'Anker in bladsy',
        toEmail: 'E-pos',
        targetFrame: '<raam>',
        targetPopup: '<opspringvenster>',
        targetFrameName: 'Naam van doelraam',
        targetPopupName: 'Naam van opspringvenster',
        popupFeatures: 'Eienskappe van opspringvenster',
        popupResizable: 'Herskaalbaar',
        popupStatusBar: 'Statusbalk',
        popupLocationBar: 'Adresbalk',
        popupToolbar: 'Werkbalk',
        popupMenuBar: 'Spyskaartbalk',
        popupFullScreen: 'Volskerm (IE)',
        popupScrollBars: 'Skuifbalke',
        popupDependent: 'Afhanklik (Netscape)',
        popupLeft: 'Posisie links',
        popupTop: 'Posisie bo',
        id: 'Id',
        langDir: 'Skryfrigting',
        langDirLTR: 'Links na regs (LTR)',
        langDirRTL: 'Regs na links (RTL)',
        acccessKey: 'Toegangsleutel',
        name: 'Naam',
        langCode: 'Taalkode',
        tabIndex: 'Tab indeks',
        advisoryTitle: 'Aanbevole titel',
        advisoryContentType: 'Aanbevole inhoudstipe',
        cssClasses: 'CSS klasse',
        charset: 'Karakterstel van geskakelde bron',
        styles: 'Styl',
        rel: 'Relationship', // MISSING
        selectAnchor: 'Kies \'n anker',
        anchorName: 'Op ankernaam',
        anchorId: 'Op element Id',
        emailAddress: 'E-posadres',
        emailSubject: 'Berig-onderwerp',
        emailBody: 'Berig-inhoud',
        noAnchors: '(Geen ankers beskikbaar in dokument)',
        noUrl: 'Gee die skakel se URL',
        noEmail: 'Gee die e-posadres'
    },

    // Anchor dialog
    anchor: {
        toolbar: 'Anker byvoeg/verander',
        menu: 'Anker-eienskappe',
        title: 'Anker-eienskappe',
        name: 'Ankernaam',
        errorName: 'Voltooi die ankernaam asseblief',
        remove: 'Remove Anchor' // MISSING
    },

    // List style dialog
    list: {
        numberedTitle: 'Eienskappe van genommerde lys',
        bulletedTitle: 'Eienskappe van ongenommerde lys',
        type: 'Tipe',
        start: 'Begin',
        validateStartNumber: 'Beginnommer van lys moet \'n heelgetal wees.',
        circle: 'Sirkel',
        disc: 'Skyf',
        square: 'Vierkant',
        none: 'Geen',
        notset: '<nie ingestel nie>',
        armenian: 'Armeense nommering',
        georgian: 'Georgiese nommering (an, ban, gan, ens.)',
        lowerRoman: 'Romeinse kleinletters (i, ii, iii, iv, v, ens.)',
        upperRoman: 'Romeinse hoofletters (I, II, III, IV, V, ens.)',
        lowerAlpha: 'Kleinletters (a, b, c, d, e, ens.)',
        upperAlpha: 'Hoofletters (A, B, C, D, E, ens.)',
        lowerGreek: 'Griekse kleinletters (alpha, beta, gamma, ens.)',
        decimal: 'Desimale syfers (1, 2, 3, ens.)',
        decimalLeadingZero: 'Desimale syfers met voorloopnul (01, 02, 03, ens.)'
    },

    // Find And Replace Dialog
    findAndReplace: {
        title: 'Soek en vervang',
        find: 'Soek',
        replace: 'Vervang',
        findWhat: 'Soek na:',
        replaceWith: 'Vervang met:',
        notFoundMsg: 'Teks nie gevind nie.',
        findOptions: 'Find Options', // MISSING
        matchCase: 'Hoof/kleinletter sensitief',
        matchWord: 'Hele woord moet voorkom',
        matchCyclic: 'Soek deurlopend',
        replaceAll: 'Vervang alles',
        replaceSuccessMsg: '%1 voorkoms(te) vervang.'
    },

    // Table Dialog
    table: {
        toolbar: 'Tabel',
        title: 'Tabel eienskappe',
        menu: 'Tabel eienskappe',
        deleteTable: 'Verwyder tabel',
        rows: 'Rye',
        columns: 'Kolomme',
        border: 'Randbreedte',
        widthPx: 'piksels',
        widthPc: 'persent',
        widthUnit: 'breedte-eenheid',
        cellSpace: 'Sel-afstand',
        cellPad: 'Sel-spasie',
        caption: 'Naam',
        summary: 'Opsomming',
        headers: 'Opskrifte',
        headersNone: 'Geen',
        headersColumn: 'Eerste kolom',
        headersRow: 'Eerste ry',
        headersBoth: 'Beide    ',
        invalidRows: 'Aantal rye moet \'n getal groter as 0 wees.',
        invalidCols: 'Aantal kolomme moet \'n getal groter as 0 wees.',
        invalidBorder: 'Randbreedte moet \'n getal wees.',
        invalidWidth: 'Tabelbreedte moet \'n getal wees.',
        invalidHeight: 'Tabelhoogte moet \'n getal wees.',
        invalidCellSpacing: 'Sel-afstand moet \'n getal wees.',
        invalidCellPadding: 'Sel-spasie moet \'n getal wees.',

        cell: {
            menu: 'Sel',
            insertBefore: 'Voeg sel in voor',
            insertAfter: 'Voeg sel in na',
            deleteCell: 'Verwyder sel',
            merge: 'Voeg selle saam',
            mergeRight: 'Voeg saam na regs',
            mergeDown: 'Voeg saam ondertoe',
            splitHorizontal: 'Splits sel horisontaal',
            splitVertical: 'Splits sel vertikaal',
            title: 'Sel eienskappe',
            cellType: 'Sel tipe',
            rowSpan: 'Omspan rye',
            colSpan: 'Omspan kolomme',
            wordWrap: 'Woord terugloop',
            hAlign: 'Horisontale oplyning',
            vAlign: 'Vertikale oplyning',
            alignBaseline: 'Basislyn',
            bgColor: 'Agtergrondkleur',
            borderColor: 'Randkleur',
            data: 'Inhoud',
            header: 'Opskrif',
            yes: 'Ja',
            no: 'Nee',
            invalidWidth: 'Selbreedte moet \'n getal wees.',
            invalidHeight: 'Selhoogte moet \'n getal wees.',
            invalidRowSpan: 'Omspan rye moet \'n heelgetal wees.',
            invalidColSpan: 'Omspan kolomme moet \'n heelgetal wees.',
            chooseColor: 'Kies'
        },

        row: {
            menu: 'Ry',
            insertBefore: 'Voeg ry in voor',
            insertAfter: 'Voeg ry in na',
            deleteRow: 'Verwyder ry'
        },

        column: {
            menu: 'Kolom',
            insertBefore: 'Voeg kolom in voor',
            insertAfter: 'Voeg kolom in na',
            deleteColumn: 'Verwyder kolom'
        }
    },

    // Button Dialog.
    button: {
        title: 'Knop eienskappe',
        text: 'Teks (Waarde)',
        type: 'Soort',
        typeBtn: 'Knop',
        typeSbm: 'Stuur',
        typeRst: 'Maak leeg'
    },

    // Checkbox and Radio Button Dialogs.
    checkboxAndRadio: {
        checkboxTitle: 'Merkhokkie eienskappe',
        radioTitle: 'Radioknoppie eienskappe',
        value: 'Waarde',
        selected: 'Geselekteer'
    },

    // Form Dialog.
    form: {
        title: 'Vorm eienskappe',
        menu: 'Vorm eienskappe',
        action: 'Aksie',
        method: 'Metode',
        encoding: 'Kodering'
    },

    // Select Field Dialog.
    select: {
        title: 'Keuseveld eienskappe',
        selectInfo: 'Info',
        opAvail: 'Beskikbare opsies',
        value: 'Waarde',
        size: 'Grootte',
        lines: 'Lyne',
        chkMulti: 'Laat me       @           �   �         �   IDENTITYCRL_CERT_CONTAINER_ec1bc145-f460-4231-9989-a62316a1f3d3                     RSA1�           1����`�3;�UB]���=�e�$4��FƤo(#pO����됝�}�j��CbCA���_M��ϙţ�o�*쮮:�v'�ј��\&#U9�EL����7ul�dn��~��L6j�73�����q�           Ќ����z �O�   	ݼk�GC��p|G��    ,   C r y p t o A P I   P r i v a t e   K e y   f         N�{��w�=|�����I�
�f����    �         F0!t�Y�������$[�'�4�%��&�'L�  
5�O����o�*_JX��� }4��ݟvc�4`}(pɒ/l^]_���0�pwmk��b��`���#(A]�M�Fq�;s�v�� ����|���f8�^(����8��I�t��(6�O)xX�n���3�0)�Z��>���\�Ϯ�]k�o�7V
�[)S�80 �����^h<{!�l�%���I��a ��*)�0���(|�������,Oa#G����������ʉ^�xj=:2ۿ�m��x�\�`,A�=��C	1y����O��k���o�2a�S��\��d���{.�h�9��L�0�x�1�+r��3�[�6(CD�0���8�M�_��A��"+d7�Oz��S���fk�	eFH���~�:R���k�^X�~�h79Kz	��s��8����5��y �1C��~�T�%(`ږ9�é>ASr_��ރ=�(:}�/9�Ϟ���koq���	g���	z�Y}�p��8�Ic����q����-X����Bbs�/�n�k��XR�Z���ےH/:q�8��Mz5�ĹFScW����4D��F�/��N 8u�1�R>��?y6�����r�4�2K[��5�"�Xk3+,j��%�����\']}�6���St2 �Y��%�L&%�	�����ԩ����pI�D_�+6jv\���}��ԫ�Q�RM\�l6_�V4�.���.C�[�wsx^��x�@@   B����F�x�[�λ%��|������ٜ^~e	z�B��6�RPIE���yBs�e����   Ќ����z �O�   	ݼk�GC��p|G��       E x p o r t   F l a g   f         *���?�^��]��m�cb�W\�=h�
�C�    �         �n���}a�}�P��>pb^�Q�� a4���s�m   z�AL�F�(�*,Խ�@   3���|���:�5��	I�@yU�Z���@�������V���އ��I&�O�E���٭Q�e�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   @           �   �         �   IDENTITYCRL_CERT_CONTAINER_86bb5fd4-ec83-4ef6-bba5-fa9be4638956                     RSA1�           %�\N�.�Z������xr�j��B�i<7K(�L0%���M�C�ḳ�,9��SM��Hަ�GE?V��xh�57s��e�0D�����lFA���%1Ȋ߂)�)���?�V�;����G�(!`�           Ќ����z �O�   {S��u>(O��v���Y0    ,   C r y p t o A P I   P r i v a t e   K e y   f         )�&Ŕ�$�$�I0�8d'R��2��n|�/    �         �嘯��=Y�/����	�������H� �  �ʎ��E��F��X���"�8�1E*�A���ݏ^iyg���J�B^#�%�QB&؏RөY��
��}6Z�M��5�%[�u��-sA��{��oX���Sa-��˦��$�k�[���6�b�>���ƗO'4Z��Sk�ኣ^�����Ǘ.i;�M��Y<$|*ugfO�c�y� =�Ui��+�4��e�y����ԃ���;�� z҂.��u����kϐ5������F[®v=��b5kP./g��3��uR��or#ď.�)F,����7�����2�}�~M)e�4��?bf�Sn��c��et����W����ԝu���Z?W|lO�+X�	����f<��� q���\w��°�H��G���4{�%����r�s�D~9C<��6�ϭ���+8�L��s���pCIz�#�b=���{��׋I�'�ADP��1�I�����-����Z�7GNUN�����n0ϵ���A"�7�t�.+P��h=���X�GͱC�Ƣ��3ך��^�l�%oW�	h)�7o�R��\̤r�3\$�k�yd�2�
7`|TH�9��,����#F������ �~�in}�^�/&����Z���)�)��Ov#�����ť���N�~G��&�q���u�/��,���BsK�K���k� �;d��]�\d�Nre$�Y�	`ϣ$*U��x�&��e��Pv�x����@   ��������E 
�����Ŝ�l{�z��5�h*�躣�G�Nayw�N�}�\��eY�����   Ќ����z �O�   {S��u>(O��v���Y0       E x p o r t   F l a g   f         �5����1��L��5�KǛ��w�oĬ
G    �         1���uAon.9��Zz��ކ��\�����p�r�   �{����s�}GsK��]@   ���Ѷ�z���P��5=ҢP����J>���m���ƨ�P^���@{��/X|VT�f�C�h16                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            rleisteengrys',
        '008080': 'Blougroen',
        '000080': 'Vlootblou',
        '4B0082': 'Indigo',
        '696969': 'Donkergrys',
        'B22222': 'Rooibaksteen',
        'A52A2A': 'Bruin',
        'DAA520': 'Donkergeel',
        '006400': 'Donkergroen',
        '40E0D0': 'Turkoois',
        '0000CD': 'Middelblou',
        '800080': 'Pers',
        '808080': 'Grys',
        'F00': 'Rooi',
        'FF8C00': 'Donkeroranje',
        'FFD700': 'Goud',
        '008000': 'Groen',
        '0FF': 'Siaan',
        '00F': 'Blou',
        'EE82EE': 'Viooltjieblou',
        'A9A9A9': 'Donkergrys',
        'FFA07A': 'Ligsalm',
        'FFA500': 'Oranje',
        'FFFF00': 'Geel',
        '00FF00': 'Lemmetjie',
        'AFEEEE': 'Ligturkoois',
        'ADD8E6': 'Ligblou',
        'DDA0DD': 'Pruim',
        'D3D3D3': 'Liggrys',
        'FFF0F5': 'Linne',
        'FAEBD7': 'Ivoor',
        'FFFFE0': 'Liggeel',
        'F0FFF0': 'Heuningdou',
        'F0FFFF': 'Asuur',
        'F0F8FF': 'Ligte hemelsblou',
        'E6E6FA': 'Laventel',
        'FFF': 'Wit'
    },

    scayt: {
        title: 'Speltoets terwyl u tik',
        opera_title: 'Nie ondersteun deur Opera nie',
        enable: 'SCAYT aan',
        disable: 'SCAYT af',
        about: 'SCAYT info',
        toggle: 'SCAYT wissel aan/af',
        options: 'Opsies',
        langs: 'Tale',
        moreSuggestions: 'Meer voorstelle',
        ignore: 'Ignoreer',
        ignoreAll: 'Ignoreer alles',
        addWord: 'Voeg woord by',
        emptyDic: 'Woordeboeknaam mag nie leeg wees nie.',

        optionsTab: 'Opsies',
        allCaps: 'Ignoreer woorde in hoofletters',
        ignoreDomainNames: 'Ignoreer domeinname',
        mixedCase: 'Ignoreer woorde met hoof- en kleinletters',
        mixedWithDigits: 'Ignoreer woorde met syfers',

        languagesTab: 'Tale',

        dictionariesTab: 'Woordeboeke',
        dic_field_name: 'Naam van woordeboek',
        dic_create: 'Skep',
        dic_restore: 'Herstel',
        dic_delete: 'Verwijder',
        dic_rename: 'Hernoem',
        dic_info: 'Aanvanklik word die gebruikerswoordeboek in \'n koekie gestoor. Koekies is egter beperk in grootte. Wanneer die gebruikerswoordeboek te groot vir \'n koekie geword het, kan dit op ons bediener gestoor word. Om u persoonlike woordeboek op ons bediener te stoor, gee asb. \'n naam vir u woordeboek. Indien u alreeds \'n gestoorde woordeboek het, tik die naam en kliek op die Herstel knop.',

        aboutTab: 'Info'
    },

    about: {
        title: 'Info oor CKEditor',
        dlgTitle: 'Info oor CKEditor',
        help: 'Check $1 for help.', // MISSING
        userGuide: 'CKEditor User\'s Guide', // MISSING
        moreInfo: 'Vir lisensie-informasie, besoek asb. ons webwerf:',
        copy: 'Kopiereg &copy; $1. Alle regte voorbehou.'
    },

    maximize: 'Maksimaliseer',
    minimize: 'Minimaliseer',

    fakeobjects: {
        anchor: 'Anker',
        flash: 'Flash animasie',
        iframe: 'IFrame',
        hiddenfield: 'Verborge veld',
        unknown: 'Onbekende objek'
    },

    resize: 'Sleep om te herskaal',

    colordialog: {
        title: 'Kies kleur',
        options: 'Kleuropsies',
        highlight: 'Aktief',
        selected: 'Geselekteer',
        clear: 'Herstel'
    },

    toolbarCollapse: 'Verklein werkbalk',
    toolbarExpand: 'Vergroot werkbalk',

    toolbarGroups: {
        document: 'Document', // MISSING
        clipboard: 'Clipboard/Undo', // MISSING
        editing: 'Editing', // MISSING
        forms: 'Forms', // MISSING
        basicstyles: 'Basic Styles', // MISSING
        paragraph: 'Paragraph', // MISSING
        links: 'Links', // MISSING
        insert: 'Insert', // MISSING
        styles: 'Styles', // MISSING
        colors: 'Colors', // MISSING
        tools: 'Tools' // MISSING
    },

    bidi: {
        ltr: 'Skryfrigting van links na regs',
        rtl: 'Skryfrigting van regs na links'
    },

    docprops: {
        label: 'Dokument Eienskappe',
        title: 'Dokument Eienskappe',
        design: 'Design', // MISSING
        meta: 'Meta Data',
        chooseColor: 'Kies',
        other: '<ander>',
        docTitle: 'Bladsy Opskrif',
        charset: 'Karakterstel Kodeering',
        charsetOther: 'Ander Karakterstel Kodeering',
        charsetASCII: 'ASCII', // MISSING
        charsetCE: 'Sentraal Europa',
        charsetCT: 'Chinees Traditioneel (Big5)',
        charsetCR: 'Cyrillic', // MISSING
        charsetGR: 'Grieks',
        charsetJP: 'Japanees',
        charsetKR: 'Koreans',
        charsetTR: 'Turks',
        charsetUN: 'Unicode (UTF-8)', // MISSING
        charsetWE: 'Western European', // MISSING
        docType: 'Dokument Opskrif Soort',
        docTypeOther: 'Ander Dokument Opskrif Soort',
        xhtmlDec: 'Voeg XHTML verklaring by',
        bgColor: 'Agtergrond kleur',
        bgImage: 'Agtergrond Beeld URL',
        bgFixed: 'Vasgeklemde Agtergrond',
        txtColor: 'Tekskleur',
        margin: 'Bladsy Rante',
        marginTop: 'Bo',
        marginLeft: 'Links',
        marginRight: 'Regs',
        marginBottom: 'Onder',
        metaKeywords: 'Dokument Index Sleutelwoorde(comma verdeelt)',
        metaDescription: 'Dokument Beskrywing',
        metaAuthor: 'Skrywer',
        metaCopyright: 'Kopiereg',
        previewHtml: '<p>This is some <strong>sample text</strong>. You are using <a href="javascript:void(0)">CKEditor</a>.</p>' // MISSING
    }
};
