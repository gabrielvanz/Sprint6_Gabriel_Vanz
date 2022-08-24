module Pages
    class Comparation < SitePrism::Page
        set_url '/index.php?controller=products-comparison'
        
        elements :products_to_comparation ,'.ajax_block_product.comparison_infos'
        elements :products_to_comparation_remove, '.icon-trash'
    end
end