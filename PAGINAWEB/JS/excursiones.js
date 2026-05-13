fetch("../XML/excursiones.xml")
.then(response=>response.text())
.then(xmlString=> {
    const parser=new DOMParser();
    const doc=parser.parseFromString(xmlString,"application/xml");
    const table=document.createElement("table");
    const hd=document.createElement("hd");
    const excursiones=doc.getElementsByTagName("excursiones");
    const tbody=document.createElement("tbody");
    const main=document.getElementsByTagName("main");
    main.appendChild(table);
    table.appendChild(hd);
    hd.colspan="5";
    hd.appendChild(excursiones);
    table.appendChild(tbody);
    const tr;
    for(let i=0;i<doc.getElementsByTagName.length();i++){
        tr=document.createElement("tr");
        tbody
    }
})