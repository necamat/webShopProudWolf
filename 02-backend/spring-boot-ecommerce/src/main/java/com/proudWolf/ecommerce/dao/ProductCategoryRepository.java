package com.proudWolf.ecommerce.dao;

import com.proudWolf.ecommerce.entity.ProductCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;


/*
** collectionResourceRel = "productCategory" is name of JSON entry
** path = "product-category" is reference from /product-category
*/

@RepositoryRestResource(collectionResourceRel = "productCategory", path = "product-category")
public interface ProductCategoryRepository extends JpaRepository<ProductCategory, Long>{
    
}
