<?php
class productgroup extends crud {
    protected $dbTable = "productgroup";
    public $arrColumns = array();
    public $arrLabels = array();
    public $arrValues = array();

    public function __construct() {
        parent::__construct($this->dbTable);
        $this->arrColumns["parent_id"]["Formtype"] = parent::INPUT_SELECT;
    }
        
    /**
     * List items
     * @return type
     */
    public function getParents($parent_id = 0) {
	    $params = array($parent_id);

        $strSelect = "SELECT id, parent_id, title, description, sortnumber " .
                        "FROM productgroup " .
                        "WHERE parent_id = ? " .
                        "AND deleted = 0 " .
                        "ORDER BY sortnumber";
        return $this->db->_fetch_array($strSelect, $params);
    }

	/**
	 * List for admin select purpose
	 * @return type
	 */
	public function getParentOpts($parent_id = 0) {
		$params = array($parent_id);

		$strSelect = "SELECT id, title " .
		             "FROM productgroup " .
		             "WHERE parent_id = ? " .
		             "AND deleted = 0 " .
		             "ORDER BY sortnumber";
		return $this->db->_fetch_array($strSelect, $params);
	}

	public function getNested() {
		$rows = $this->getParents();

		$rows_nested = array();

		foreach($rows as $key => $row) {

			$rows_nested[] = $row;
			foreach($this->getParents($row["id"]) as $k => $v) {
				$v["title"] = $v["title"];
				$rows_nested[] = $v;
			};
		}
		return $rows_nested;

	}


	/**
	 * List items for API use
	 * @return array
	 */
	public function getApiListByParent($parent_id = 0) {
		$params = array($parent_id);
		$strSelect = "SELECT id, parent_id, title, description, sortnumber " .
		             "FROM productgroup " .
		             "WHERE parent_id = ? " .
		             "AND deleted = 0 " .
		             "ORDER BY sortnumber";
		return $this->db->_fetch_array($strSelect, $params);
	}

	/**
	 * List single item for API use
	 * @return array
	 */
	public function getApiItem($id) {
		$params = array($id);
		$strSelect = "SELECT id, parent_id, title, description, sortnumber " .
		             "FROM productgroup " .
		             "WHERE id = ? " .
		             "AND deleted = 0 " .
		             "ORDER BY sortnumber";
		return $this->db->_fetch_array($strSelect, $params);
	}

	/**
	 * List single item for API use
	 * @return array
	 */
	public function getApiByBrand($id) {
		$params = array($id);
		$strSelect = "SELECT DISTINCT(g.id), g.parent_id, g.title, g.description, g.sortnumber " .
		             "FROM productgroup g " .
		             "LEFT JOIN productgrouprel x " .
		             "ON g.id = x.productgroup_id " .
		             "JOIN product p " .
		             "ON p.id = x.product_id " .
		             "WHERE p.brand_id = ? " .
		             "AND p.deleted = 0 " .
		             "ORDER BY g.sortnumber";
		return $this->db->_fetch_array($strSelect, $params);
	}


	/**
	 * Returns an array with parent Id's
	 * @param int $iFolderID
	 * @param array $arrParents
	 */
	public function getParentGroups($iFolderID, &$arrParents = array()) {

		$param = array($iFolderID);
		$strSelectParents = "SELECT iParentID, vcUrlName FROM " . $this->dbTable . " " .
		                    "WHERE iFolderID = ?";
		$row = $this->db->_fetch_array($strSelectParents,$param);

		if(count($row)) {
			foreach($row as $key => $values) {
				array_unshift($this->arrParents,$values["iParentID"]);
				array_unshift($this->arrPaths,$values["vcUrlName"]);
				$this->getParents($values["iParentID"],$arrParents);
			}
		}
	}

	/**
     * Select item by id
     * @param int $iItemID
     * @return array
     */
    public function getItem($iItemID) {
        $this->arrValues = parent::getItem($iItemID);
        foreach ($this->arrValues as $key => $value) {
            $this->$key = $value;
        }
    }
    
    /**
     * Save item
     */
    public function save() {
        return parent::saveItem();
    }
    
    /**
     * Delete item
     */
    public function delete($iItemID) {
        parent::delete($iItemID);
    } 
    
}
