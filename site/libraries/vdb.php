<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class CI_vdb {

    public function __construct() {
        $this->CI = & get_instance();
        //Session language
        $lang = $this->CI->session->userdata('lang');
        if (!$lang) {
            $this->CI->session->set_userdata('lang', 'vi');
            $this->CI->session->set_userdata('lang_site', 'vietnamese');
        }

        $lang_site = $this->CI->session->userdata('lang_site');
        if (!$lang_site) {
            $uri_lang = $this->CI->uri->segment(1);
            if ($uri_lang == 'vi') {
                $this->CI->session->set_userdata('lang_site', 'vietnamese');
            } else if ($uri_lang == 'en') {
                $this->CI->session->set_userdata('lang_site', 'english');
            } else {
                $this->CI->session->set_userdata('lang_site', 'vietnamese');
            }
        }
        // SET Local
        if (!$this->CI->session->userdata('fyi_choice_city') || $this->CI->session->userdata('fyi_choice_city') == '') {
            $this->CI->session->set_userdata('fyi_choice_city', 25);
            $this->CI->session->set_userdata('fyi_choice_city_name', 'TP Hồ Chí Minh');
        }
    }

    /* ------------------------------------+
     * delet cache
      +--------------------------------- */

    function delcache($dir = "site/cache/cart/") {
        if (is_dir($dir)) {
            if ($handle = opendir($dir)) {
                while (false !== ($file = readdir($handle))) {
                    if (strlen($file) > 4 && file_exists($dir . '/' . $file)) {
                        chmod($dir . '/' . $file, 0777);
                        @unlink($dir . '/' . $file);
                    }
                }
            }
        }
    }

    // Insert 
    function insert($table, $data) {
        $this->CI->db->insert($table, $data);
        return $this->CI->db->insert_id();
    }

    // Update
    function update($table, $data, $id = 0) {
        if (!is_array($id)) {
            if ($this->CI->db->insert($table, $data)) {
                return $this->CI->db->insert_id();
            } else {
                return FALSE;
            }
        } else {
            foreach ($id as $k => $v) {
                $this->CI->db->where($k, $v);
            }
            if ($this->CI->db->update($table, $data)) {
                return TRUE;
            } else {
                return FALSE;
            }
        }
    }

    // Delete
    function delete($table, $id) {
        if (is_array($id)) {
            foreach ($id as $k => $v) {
                $this->CI->db->where($k, $v);
            }
            if ($this->CI->db->delete($table)) {
                return TRUE;
            } else {
                return FALSE;
            }
        } else {
            show_error('ID is no Array()');
        }
    }

    function find_by_id($table, $id) {
        if (!is_array($id)) {
            show_error('ID is no array');
        } else {
            foreach ($id as $k => $v) {
                $this->CI->db->where($k, $v);
            }
            $query = $this->CI->db->get($table);
            $result = $query->row();
            return $result;
        }
    }

    /* ---- menu cap 1 -- */

    function findMenuCacheSimple($table, $strSelect = "", $type = '_', $id = 0, $order = '', $limit = null) {
        $options = '';

        $file = ROOT . "site/cache/menu/" . $type . "_" . "menu_simple_header.db";
        if (file_exists($file)) {
            $options = @file_get_contents($file);
        } else {
            if (!empty($strSelect)) {
                $this->CI->db->select(trim($strSelect));
            }
            if (is_array($id)) {
                foreach ($id as $k => $v) {
                    $this->CI->db->where($k, $v);
                }
            }

            if (is_array($order)) {
                foreach ($order as $k => $v) {
                    $this->CI->db->order_by($k, $v);
                }
            }

            $query = $this->CI->db->get($table, $limit);
            $result = $query->result();

            if (count($result) > 0) {

                foreach ($result as $valMenu) {
                    $nameCat = $valMenu->name;
                    if ($type == 'TT') {
                        $link = site_url('thong-tin' . '/' . vnit_change_title($nameCat) . '-' . $valMenu->id);
                    } else if ($type == 'DV') {
                        $link = site_url('dich-vu' . '/' . vnit_change_title($nameCat) . '-' . $valMenu->id);
                    } else {
                        $link = site_url('tro-giup' . '/' . vnit_change_title($nameCat) . '-' . $valMenu->id);
                    }
                    $options .= '<li><a href="' . $link . '">' . $nameCat . '</a></li>';
                }
            }
            //check options
            if (!empty($options)) {
                @file_put_contents($file, $options);
            }
        }
        return $options;
    }

    function find_by_list($table, $strSelect = null, $id = 0, $order = '', $limit = null) {
        if ($strSelect != null) {
            $this->CI->db->select($strSelect);
        }
        if (is_array($id)) {
            foreach ($id as $k => $v) {
                $this->CI->db->where($k, $v);
            }
        }
        if (is_array($order)) {
            foreach ($order as $k => $v) {
                $this->CI->db->order_by($k, $v);
            }
        }
        $query = $this->CI->db->get($table, $limit);
        return $query->result();
    }

    // Get Total
    function find_by_all($table, $strSelect = null, $num, $offset, $id = 0, $field = '', $order = '') {
        if ($strSelect != null) {
            $this->CI->db->select($strSelect);
        }
        if (is_array($id)) {
            foreach ($id as $k => $v) {
                $this->CI->db->where($k, $v);
            }
        }
        if ($field != '' && $order != '') {
            $this->CI->db->order_by($field, $order);
        }
        return $this->CI->db->get($table, $num, $offset)->result();
    }

    function find_by_num($table, $id = 0) {
        if (is_array($id)) {
            foreach ($id as $k => $v) {
                $this->CI->db->where($k, $v);
            }
        }
        $query = $this->CI->db->get($table);
        return $query->num_rows();
    }

    // Find max barcode  

    function find_barcode($table, $order, $id = 0) {
        if (is_array($id)) {
            foreach ($id as $k => $v) {
                $this->CI->db->where($k, $v);
            }
        }
        if (is_array($order)) {
            foreach ($order as $k => $v) {
                $this->CI->db->order_by($k, $v);
            }
        }
        return $this->CI->db->get($table)->row();
    }

    /* --------------------------------------------+
     * @ banner header cache
      +------------------------------------------ */

    function findBannerCache_list($table, $strSelect = null, $order = NULL) {
        $options = '';

        $file = ROOT . "site/cache/banner_header.db";
        if (file_exists($file)) {
            $options = @file_get_contents($file);
        } else {
            if (!empty($strSelect)) {
                $this->CI->db->select(trim($strSelect));
            }

            if (is_array($order)) {
                foreach ($order as $k => $v) {
                    $this->CI->db->order_by($k, $v);
                }
            }

            $query = $this->CI->db->get($table);
            $result = $query->result();
            if (count($result) > 0) {
                foreach ($result as $val) {
                    $namAds = $val->name;
                    $imgPath = (!empty($val->image)) ? base_url() . 'data/ads/471/' . $val->image : base_url() . 'site/templates/default/images/no_image.gif';
                    $link = $val->url;
                    $options .= '<a href="' . $link . '"><img src="' . $imgPath . '" width="950" height="335" alt="' . $namAds . '"></a>';
                }
            }
            //check options 
            if (!empty($options)) {
                @file_put_contents($file, $options);
            }
        }
        return $options;
    }

    /* --------------------------------------------+
     * menu cat
      +------------------------------------------ */

    function findMenuCache_list($table, $strSelect = "", $type = '_', $id = 0, $order = '', $limit = null) {
        $options = '';

        $file = ROOT . "site/cache/menu/" . $type . "_" . "menu_left.db";
        if (file_exists($file)) {
            $options = @file_get_contents($file);
        } else {
            if (!empty($strSelect)) {
                $this->CI->db->select(trim($strSelect));
            }
            if (is_array($id)) {
                foreach ($id as $k => $v) {
                    $this->CI->db->where($k, $v);
                }
            }
            /* if(!empty($type)){
              $this->CI->db->where('type', $type);
              } */
            if (is_array($order)) {
                foreach ($order as $k => $v) {
                    $this->CI->db->order_by($k, $v);
                }
            }

            $query = $this->CI->db->get($table, $limit);
            $result = $query->result();
            if (count($result) > 0) {
                foreach ($result as $valMenu) {
                    $nameCat = $valMenu->cat_title;
                    //	$imageCat	= (!empty($valMenu->image))?base_url().'data/category/thumb/'.$valMenu->image:base_url().'site/templates/default/images/icon.png';
                    switch ($type) {
                        case 'IA': {
                                $link = site_url('Thiet-ke-in-an/' . $valMenu->caturl . '-' . $valMenu->cat_id);
                                break;
                            }

                        default: {
                                $link = site_url('chuyen-muc/' . $valMenu->cat_alias . '-' . $valMenu->cat_id);
                                break;
                            }
                    }
                    $options .= '<li id="' . $valMenu->cat_id . '"><a href="' . $link . '">' . $nameCat . '</a>
	        						<span>' . $valMenu->note_title . '</span>
	        						</li>';
                }
            }
            //check options 
            if (!empty($options)) {
                @file_put_contents($file, $options);
            }
        }
        return $options;
    }

}

/* End of file MY_Model.php */
/* Location: ./system/application/libraries/MY_Model.php */