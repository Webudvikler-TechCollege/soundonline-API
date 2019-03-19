<?php
class product extends crud {
    protected $dbTable = "product";
    public $arrColumns = array();
    public $arrLabels = array();
    public $arrValues = array();

    public function __construct() {
        parent::__construct($this->dbTable);
        $this->arrColumns["description_long"]["Formtype"] = parent::INPUT_TEXTEDITOR;
        $this->arrColumns["image"]["Formtype"] = parent::INPUT_IMAGEEDITOR;
        $this->arrColumns["brand_id"]["Formtype"] = parent::INPUT_SELECT;
    }

    /**
     * List items
     * @return type
     */
    public function getAll() { 
        $strSelect = "SELECT p.*, b.title AS brand " .
                        "FROM product p " .
                        "LEFT JOIN brand b " .
                        "ON p.brand_id = b.id " .
                        "WHERE p.deleted = 0 " .
                        "ORDER BY p.title";
        return $this->db->_fetch_array($strSelect);
    }

	/**
	 * List items for API use
	 * @return array
	 */
    public function getApiList() {
	    $strSelect = "SELECT p.id, p.item_number, b.title AS brand, p.title, " .
	                 "p.description_short, p.description_long, p.image, p.price, p.stock " .
	                 "FROM product p " .
	                 "LEFT JOIN brand b " .
	                 "ON p.brand_id = b.id " .
	                 "WHERE p.deleted = 0 " .
	                 "ORDER BY p.title";
	    return $this->db->_fetch_array($strSelect);
    }

	/**
	 * List single item for API use
	 * @return array
	 */
	public function getApiItem($id) {
    	$params = array($id);
		$strSelect = "SELECT p.id, p.item_number, b.title AS brand, p.title, " .
		             "p.description_short, p.description_long, p.image, p.price, p.stock " .
		             "FROM product p " .
		             "LEFT JOIN brand b " .
		             "ON p.brand_id = b.id " .
		             "WHERE p.id = ? " .
		             "AND p.deleted = 0 " .
		             "ORDER BY p.title";
		$row = $this->db->_fetch_array($strSelect, $params);

		$strSelectImages = "SELECT image " .
		             "FROM productimage " .
		             "WHERE product_id = ?";
		$row[0]["otherimages"] = $this->db->_fetch_array($strSelectImages, $params);

		return $row;
	}

	/**
	 * List single item for API use
	 * @return array
	 */
	public function getApiListByGroup($group_id) {
		$params = array($group_id);
		$strSelect = "SELECT p.id, p.item_number, b.title AS brand, p.title, " .
		             "p.description_short, p.description_long, p.image, p.price, p.stock " .
		             "FROM product p " .
		             "LEFT JOIN brand b " .
		             "ON p.brand_id = b.id " .
		             "LEFT JOIN productgrouprel x " .
		             "ON p.id = x.product_id " .
		             "WHERE x.productgroup_id = ? " .
		             "AND p.deleted = 0 " .
		             "ORDER BY p.title";
		return $this->db->_fetch_array($strSelect, $params);
	}

	/**
	 * List single item for API use
	 * @return array
	 */
	public function getApiListByBrand($brand_id) {
		$params = array($brand_id);
		$strSelect = "SELECT p.id, p.item_number, b.title AS brand, p.title, " .
		             "p.description_short, p.description_long, p.image, p.price, p.stock " .
		             "FROM product p " .
		             "LEFT JOIN brand b " .
		             "ON p.brand_id = b.id " .
		             "WHERE p.brand_id = ? " .
		             "AND p.deleted = 0 " .
		             "ORDER BY p.title";
		return $this->db->_fetch_array($strSelect, $params);
	}

    /**
     * Select item by id
     * @param int $iItemID
     * @return array
     */
    public function getItem($iItemID) {
        $this->arrValues = parent::getItem($iItemID);

	    $this->arrValues["arrGroups"] = $this->getgrouprelations();

        foreach ($this->arrValues as $key => $value) {
            $this->$key = $value;
        }
    }

	/**
	 *
	 * @return type
	 */
	public function getgrouprelations() {
		$params = array($this->arrValues["id"]);
		$strSelect = "SELECT g.id, g.title " .
		             "FROM productgroup g, productgrouprel x " .
		             "WHERE x.product_id = ? " .
		             "AND x.productgroup_id = g.id " .
		             "AND deleted = 0";
		return $this->db->_fetch_array($strSelect, $params);
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
