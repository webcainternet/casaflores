<?php
class ControllerModuleScrollingcart extends Controller {
    private $error = array(); // This is used to set the errors, if any.
 
    public function index() {
        // Loading the language file of newslettersubscription
        $this->load->language('module/scrollingcart'); 
     
        // Set the title of the page to the heading title in the Language file i.e., 
        $this->document->setTitle(strip_tags($this->language->get('heading_title')));
     
        // Load the Setting Model  (All of the OpenCart Module & General Settings are saved using this Model )
        $this->load->model('setting/setting');
     
        // Start If: Validates and check if data is coming by save (POST) method
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
             $this->load->model('setting/setting');
            // Parse all the coming data to Setting Model to save it in database.
            $this->model_setting_setting->editSetting('scrollingcart', $this->request->post);
     
            // To display the success text on data save
            $this->session->data['success'] = $this->language->get('text_success');
     
            // Redirect to the Module Listing
            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }
     
        // Assign the language data for parsing it to view  
        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_edit']    = $this->language->get('text_edit');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
	    $data['text_yes'] = $this->language->get('text_yes');
        $data['text_no'] = $this->language->get('text_no');
    	$data['text_right'] = $this->language->get('text_right');
        $data['text_left'] = $this->language->get('text_left');
        $data['text_content_top'] = $this->language->get('text_content_top');
        $data['text_content_bottom'] = $this->language->get('text_content_bottom');      
        $data['text_column_left'] = $this->language->get('text_column_left');
        $data['text_column_right'] = $this->language->get('text_column_right');
    	$data['entry_js_status'] = $this->language->get('entry_js_status');
    	$data['entry_show_search'] = $this->language->get('entry_show_search');
    	$data['entry_show_toplink'] = $this->language->get('entry_show_toplink');
    	$data['entry_bgcolor'] = $this->language->get('entry_bgcolor');
    	$data['entry_delete_link'] = $this->language->get('entry_delete_link');
    	$data['entry_price_color'] = $this->language->get('entry_price_color');
    	$data['entry_product_name_color'] = $this->language->get('entry_product_name_color');
    	$data['entry_show_cartposition'] = $this->language->get('entry_show_cartposition');
    	$data['entry_title'] = $this->language->get('entry_title');
    	$data['entry_status'] = $this->language->get('entry_status');
    	$data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');
        $data['button_add_module'] = $this->language->get('button_add_module');
        $data['button_remove'] = $this->language->get('button_remove');
        $data['entry_product_image'] = $this->language->get('entry_product_image');

    	// This Block returns the warning if any
        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

	   if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = array();
		}

    	// Making of Breadcrumbs to be displayed on site
        $data['breadcrumbs'] = array();
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_module'),
            'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('module/scrollingcart', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        if (!isset($this->request->get['module_id'])) {
            $data['action'] = $this->url->link('module/scrollingcart', 'token=' . $this->session->data['token'], 'SSL');
        } else {
            $data['action'] = $this->url->link('module/scrollingcart', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
        }         
             
        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'); // URL to be redirected when cancel button is pressed

        if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
	   }
	   $data['token'] = $this->session->data['token'];

    	$this->load->model('localisation/language');
	   $data['languages'] = $this->model_localisation_language->getLanguages();

    	if (isset($this->request->post['scrollingcart_description'])) {
            $data['scrollingcart_description'] = $this->request->post['scrollingcart_description'];


        } else {
            $data['scrollingcart_description'] = $this->config->get('scrollingcart_description');

        }

        // POST ALL valaues from module
        if (isset($this->request->post['scrollingcart_status'])) {
            $data['scrollingcart_status'] = $this->request->post['scrollingcart_status'];
        } else {
            $scrollingcart_status =  $this->config->get('scrollingcart_status');
            $data['scrollingcart_status'] = !empty($scrollingcart_status) ? $scrollingcart_status : '0';
        }

	$data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');
        $this->response->setOutput($this->load->view('module/scrollingcart.tpl', $data));

    }

    /* Function that validates the data when Save Button is pressed */
    protected function validate() {
        // Block to check the user permission to manipulate the module
        if (!$this->user->hasPermission('modify', 'module/scrollingcart')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
	// Block returns true if no error is found, else false if any error detected
        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }
} 
 
