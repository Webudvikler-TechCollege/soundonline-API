<?php
require_once filter_input(INPUT_SERVER, "DOCUMENT_ROOT") . "/cms/assets/incl/init.php";
$mode = setMode();
$strModuleName = "Produkter";

switch (strtoupper($mode)) {
    /* List Mode */
    case "LIST":
        $strModuleMode = "Oversigt";
        sysHeader();
        /* Set array button panel */
        $arrButtonPanel = array();
        $arrButtonPanel[] = getButton("button", "Opret produkt", "getUrl('?mode=edit&id=-1')");
        /* Call static panel with title and button options */
        echo textPresenter::presentpanel($strModuleName, $strModuleMode, $arrButtonPanel);
        /* Fetch artists from DB */
        $obj = new product();
        $rows = $obj->getall();

        $arrLabels = array(
            "opts" => "Options",
            "brand" => $obj->arrColumns["brand_id"]["Label"],
            "title" => $obj->arrColumns["title"]["Label"]
        );

        /* Format rows with option icons */
        foreach ($rows as $key => $row) {
            $rows[$key]["opts"] = getIcon("?mode=edit&id=" . $row["id"], "pencil") .
                    getIcon("?mode=details&id=" . $row["id"], "eye") .
                    getIcon("", "trash", "Slet produkt", "remove(" . $row["id"] . ")");
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
	    $arrButtonPanel[] = getButton("button","Vælg produktgrupper","getUrl('?mode=setproductgroups&id=".$id."')");
        $arrButtonPanel[] = getButton("button", "Rediger", "getUrl('?mode=edit&id=" . $id . "')");
        $arrButtonPanel[] = getButton("button", "Oversigt", "document.location.href='?mode=list'");

        /* Call static panel with title and button options */
        echo textPresenter::presentpanel($strModuleName, $strModuleMode, $arrButtonPanel);

        $obj = new product();
        $obj->getitem($id);

	    $obj->arrValues["image"] = "<img src=\"/images/products/".$obj->arrValues["image"]."\">";
	    $obj->arrValues["price"] = formatPrice($obj->arrValues["price"]);
	    $obj->arrValues["active"] = boolToIcon($obj->arrValues["active"]);

	    if(count($obj->arrValues["arrGroups"])) {
		    $obj->arrColumns["arrGroups"] = array("Label" => "Produktgrupper");
		    $obj->arrValues["arrGroups"] = implode(array_column($obj->arrValues["arrGroups"], "title"),", ");
	    }

        $p = new listPresenter($obj->arrColumns, $obj->arrValues);
        echo $p->presentdetails();


        sysFooter();
        break;

    case "EDIT";
        $id = filter_input(INPUT_GET, "id", FILTER_SANITIZE_NUMBER_INT);

        $obj = new product();
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

        $brand = new brand();
	    $arrBrandOpts = $brand->getAll();
	    array_unshift($arrBrandOpts, array("","Vælg brand"));
	    $obj->arrValues["brand_id"] = SelectBox("brand_id", $arrBrandOpts, $obj->arrValues["brand_id"]);

	    /* Call From Presenter */
        $form = new formPresenter($obj->arrColumns, $obj->arrValues);
        echo $form->presentform();

        sysFooter();
        break;

    case "SAVE";
        $obj = new product();
        $id = $obj->save();
        header("Location: ?mode=details&id=" . $id);
        break;

    case "DELETE":
        $obj = new product();
        $id = filter_input(INPUT_GET, "id", FILTER_VALIDATE_INT);
        $obj->delete($id);
        header("Location: ?mode=list");
        break;

	case "SETPRODUCTGROUPS":
		$id = filter_input(INPUT_GET, "id", FILTER_SANITIZE_NUMBER_INT);

		$strModuleMode = "Produktgrupper";
		sysHeader();
		/* Set array button panel */
		$arrButtonPanel = array();
		$arrButtonPanel[] = getButton("button","Detaljer","getUrl('?mode=details&id=".$id."')");
		$arrButtonPanel[] = getButton("button","Oversigt","document.location.href='?mode=list'");
		/* Call static panel with title and button options */
		echo textPresenter::presentpanel($strModuleName,$strModuleMode,$arrButtonPanel);

		/* Create array with user related groups */
		$arrSelected = array();
		$params = array($id);
		$strSelect = "SELECT productgroup_id FROM productgrouprel WHERE product_id = ?";
		$rel = $db->_fetch_array($strSelect, $params);
		foreach($rel as $value) {
			$arrSelected[] = $value["productgroup_id"];
		}

		/* Get all groups from group object */
		$group = new productgroup();
		$rows = $group->getNested();

		/* Define arrColumns with product id field */
		$arrColumns = array();
		$arrColumns["id"] = array(
			"Formtype" => crud::INPUT_HIDDEN,
			"Required" => 0
		);

		/* Define form values with product id value */
		$arrFormValues = array();
		$arrFormValues["id"] = $id;

		/* Loop rows and define arrColumns with checkboxes for group id's */
		foreach($rows as $key => $arrValues) {
			$field = "groups[".$arrValues["id"]."]";
			$arrColumns[$field] = array(
				"Formtype" => crud::INPUT_CHECKBOX,
				"Required" => 0,
				"Label" => $arrValues["title"]
			);
			/* Set form values with related group id's */
			$arrFormValues[$field] = in_array($arrValues["id"], $arrSelected) ? 1 : 0;
		}

		$form = new formPresenter($arrColumns,$arrFormValues);
		$form->formAction = "saveproductgroups";
		echo $form->presentform();

		sysFooter();
		break;

	case "SAVEPRODUCTGROUPS":
		$id = filter_input(INPUT_POST, "id", FILTER_SANITIZE_NUMBER_INT);

		/* Delete existing user related groups */
		$params = array($id);
		$strDelete = "DELETE FROM productgrouprel WHERE product_id = ?";
		$db->_query($strDelete, $params);

		/* Create array for post filtering */
		$args = array(
			"groups" => array(
				"filter" => FILTER_VALIDATE_INT,
				"flags" => FILTER_REQUIRE_ARRAY
			)
		);
		$arrInputVal = filter_input_array(INPUT_POST, $args);

		/* Save user related groups if any */
		if(count($arrInputVal["groups"])) {
			$arrGroups = array_keys($arrInputVal["groups"]);
			foreach($arrGroups as $value) {
				$params = array($id, $value);
				$strInsert = "INSERT INTO productgrouprel(product_id, productgroup_id) VALUES(?,?)";
				$db->_query($strInsert, $params);
			}
		}

		header("Location: ?mode=details&id=" . $id);

		break;

}
