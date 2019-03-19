<?php
class brand extends crud {
    protected $dbTable = "brand";
    public $arrColumns = array();
    public $arrLabels = array();
    public $arrValues = array();

    public function __construct() {
        parent::__construct($this->dbTable);
        $this->arrColumns["description"]["Formtype"] = parent::INPUT_TEXTEDITOR;
    }
        
    /**
     * List items
     * @return type
     */
    public function getAll() {
        $strSelect = "SELECT id, title, description " .
                        "FROM  " . $this->dbTable . " " .
                        "WHERE deleted = 0 " .
                        "ORDER BY title";
        return $this->db->_fetch_array($strSelect);
    }

	/**
	 * List items for API use
	 * @return array
	 */
	public function getApiList() {
		$strSelect = "SELECT id, title, description " .
		             "FROM brand " .
		             "WHERE deleted = 0 " .
		             "ORDER BY title";
		return $this->db->_fetch_array($strSelect);
	}

	/**
	 * List single item for API use
	 * @return array
	 */
	public function getApiItem($id) {
		$params = array($id);
		$strSelect = "SELECT id, title, description " .
		             "FROM brand " .
		             "WHERE id = ? " .
					 "AND deleted = 0";
		return $this->db->_fetch_array($strSelect, $params);
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
