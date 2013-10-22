# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#etudiants').dataTable
    sDom: 'Rlfrtip'
    sScrollY: "500px"
    bPaginate: false
    bProcessing: true
    bJQueryUI: true
    fnSetFilteringDelay:true
    aoColumns: [
            { sTitle: "Id", mData: "user_id", bSearchable: false, sWidth : "40px"}
            { sTitle: "Politesse", mData: "titre", sWidth : "50px"}
            { sTitle: "Nom", mData: "nom", sClass: "ColInBold"   }
            { sTitle: "Prénom", mData: "prenom", sWidth : "150px"}
            { sTitle: "Filière", mData: "filiere" , sWidth : "150px" }
            { sTitle: "Orientation", mData: "orientation", sWidth : "250px"}
            { sTitle: "Mode", mData: "mode", sWidth : "100px"}
            { sTitle: "Dernière connection", mData: "last_connected_at", bSearchable: false, sWidth : "50px"}]
    bDeferRender: true
    sAjaxSource: $('#etudiants').data('source')
    oLanguage: {
      sProcessing:     "Traitement en cours...",
      sSearch:         "Rechercher&nbsp;:",
      sLengthMenu:     "Afficher _MENU_ &eacute;l&eacute;ments",
      sInfo:           "Affichage de l'&eacute;lement _START_ &agrave; _END_ sur _TOTAL_ &eacute;l&eacute;ments",
      sInfoEmpty:      "Affichage de l'&eacute;lement 0 &agrave; 0 sur 0 &eacute;l&eacute;ments",
      sInfoFiltered:   "(filtr&eacute; de _MAX_ &eacute;l&eacute;ments au total)",
      sInfoPostFix:    "",
      sLoadingRecords: "Chargement en cours...",
      sZeroRecords:    "Aucun &eacute;l&eacute;ment &agrave; afficher",
      sEmptyTable:     "Aucune donnée disponible dans le tableau"
      
      
    }

