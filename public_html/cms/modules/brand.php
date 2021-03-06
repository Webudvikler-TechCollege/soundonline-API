<?php
require_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/cms/assets/incl/init.php";
$mode = setMode();
$strModuleName = "Brands";

switch (strtoupper($mode)) {
    /* List Mode */
    case "LIST":
        $strModuleMode = "Oversigt";
        sysHeader();
        /* Set array button panel */
        $arrButtonPanel = array();
        $arrButtonPanel[] = getButton("button", "Opret brand", "getUrl('?mode=edit&id=-1')");
        /* Call static panel with title and button options */
        echo textPresenter::presentpanel($strModuleName, $strModuleMode, $arrButtonPanel);
        /* Fetch artists from DB */
        $obj = new brand();
        $rows = $obj->getall();

        $arrLabels = array(
            "opts" => "Options",
            "title" => $obj->arrColumns["title"]["Label"]
        );

        /* Format rows with option icons */
        foreach ($rows as $key => $row) {
            $rows[$key]["opts"] = getIcon("?mode=edit&id=" . $row["id"], "pencil") .
                    getIcon("?mode=details&id=" . $row["id"], "eye") .
                    getIcon("", "trash", "Slet nyhed", "remove(" . $row["id"] . ")");
        }
        /* Call list presenter object  */
        $p = new listPresenter($arrLabels, $rows);
        echo $p->presentlist();

        sysFooter();
        break;

    case "DETAILS":
        $id = filter_input(INPUT_GET, "id", FILTER_SANITIZE_NUMBER_INT);

        $strModuleMode = "Detaljer";
        sysHeader();
        /* Set array button panel */
        $arrButtonPanel = array();
        //$arrButtonPanel[] = getTopicPicker(crud::MOD_NEWSLETTER,$iNewsID);            
        $arrButtonPanel[] = getButton("button", "Rediger", "getUrl('?mode=edit&id=" . $id . "')");
        $arrButtonPanel[] = getButton("button", "Oversigt", "document.location.href='?mode=list'");

        /* Call static panel with title and button options */
        echo textPresenter::presentpanel($strModuleName, $strModuleMode, $arrButtonPanel);

        $obj = new brand();
        $obj->getitem($id);

        $p = new listPresenter($obj->arrColumns, $obj->arrValues);
        echo $p->presentdetails();


        sysFooter();
        break;

    case "EDIT";
        $id = filter_input(INPUT_GET, "id", FILTER_SANITIZE_NUMBER_INT);

        $obj = new brand();
        if ($id > 0) {
            $obj->getitem($id);
        }

        $strModuleMode = ($id > 0) ? "Rediger" : "Opret nyt brand";
        sysHeader();

        /* Set array button panel */
        $arrButtonPanel = array();

        if ($id > 0) {
            $arrButtonPanel[] = getButton("button", "Detaljer", "getUrl('?mode=details&id=" . $id . "')");
        }
        $arrButtonPanel[] = getButton("button", "Oversigt", "getUrl('?mode=list')");
        /* Call static panel with title and button options */
        echo textPresenter::presentpanel($strModuleName, $strModuleMode, $arrButtonPanel);

        /* Call From Presenter */
        $form = new formPresenter($obj->arrColumns, $obj->arrValues);
        echo $form->presentform();

        sysFooter();
        break;

    case "SAVE";
        $obj = new brand();
        $id = $obj->save();
        header("Location: ?mode=details&id=" . $id);
        break;

    case "DELETE":
        $obj = new brand();
        $id = filter_input(INPUT_GET, "id", FILTER_VALIDATE_INT);
        $obj->delete($id);
        header("Location: ?mode=list");
        break;
}
